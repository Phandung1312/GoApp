import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_app_driver/config/colors.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:go_app_driver/extensions/latlng_extension.dart';
import 'package:go_app_driver/presentation/bloc/booking/booking_bloc.dart';
import 'package:go_app_driver/presentation/bloc/home/home_cubit.dart';
import 'package:go_app_driver/presentation/bloc/socket/socket_bloc.dart';
import 'package:go_app_driver/presentation/pages/booking/sections/booking_bottom_section.dart';
import 'package:go_app_driver/presentation/pages/booking/sections/booking_contact_section.dart';
import 'package:go_app_driver/presentation/pages/booking/sections/booking_info_section.dart';
import 'package:go_app_driver/presentation/pages/booking/sections/booking_status_section.dart';
import 'package:go_app_driver/presentation/pages/booking/sections/cancelled_booking_dialog.dart';
import 'package:go_app_driver/presentation/pages/booking/sections/complete_booking_dialog.dart';
import 'package:go_app_driver/presentation/widgets/loading_overlay.dart';
import 'package:vietmap_flutter_navigation/models/direction_route.dart';

import 'package:vietmap_flutter_navigation/vietmap_flutter_navigation.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  MapNavigationViewController? _navigationController;
  late MapOptions _navigationOption;
  final _vietmapPlugin = VietMapNavigationPlugin();

  @override
  void initState() {
    super.initState();
    _navigationOption = _vietmapPlugin.getDefaultOptions();
    _navigationOption.simulateRoute = false;
    _navigationOption.isCustomizeUI = true;
    _navigationOption.apiKey = dotenv.env['MAP_API_KEY'] ?? "";
    _navigationOption.mapStyle = dotenv.env['MAP_STYLE'] ?? "";
    _navigationOption.padding = const EdgeInsets.all(100);

    _vietmapPlugin.setDefaultOptions(_navigationOption);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookingBloc, BookingState>(
      listener: (context, state) {
        if (state is BookingLoadInfoError) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Đã có lỗi xảy ra. Hãy thử lại!"),
          ));
          Navigator.pop(context);
        }
        if (state is BookingStatusChanged) {
          switch (state.bookingData.status) {
            case BookingStatus.onRide:
              initRoute(state);
              break;
            case BookingStatus.complete:
              {
                context.read<HomeCubit>().onReload();
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const CompleteBookingDialog();
                  },
                ).whenComplete(() => Navigator.pop(context));
              }
              break;
            case BookingStatus.cancelled:
              {
                context.read<HomeCubit>().onReload();
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const CancelledBookingDialog();
                  },
                ).whenComplete(() => Navigator.pop(context));
              }
              break;
            default:
              break;
          }
        }
      },
      buildWhen: (previous, current) =>
          current is BookingLoadingInfo || current is BookingLoadInfoSuccess,
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: state is BookingLoadingInfo
                ? const Center(child: spinKitWave)
                : state is BookingLoadInfoSuccess
                    ? SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 10,
                                      top: 0,
                                      bottom: 0,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Icon(
                                          Icons.arrow_back_ios_new,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                        top: 0,
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: Center(
                                            child: BookingStatusSection())),
                                  ],
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(
                              color: AppColors.grayLine,
                              height: 5,
                            ),
                            const BookingInfoSection(),
                            Expanded(
                              child: NavigationView(
                                  mapOptions: _navigationOption,
                                  onRouteProgressChange: (RouteProgressEvent
                                      routeProgressEvent) async {
                                    var currentLocation =
                                        routeProgressEvent.snappedLocation;
                                    if (currentLocation != null) {
                                      context.read<SocketBloc>().updateBearing(
                                          currentLocation.bearing?.toDouble() ??
                                              0);
                                    }
                                  },
                                  onRouteBuilt: (DirectionRoute direction) {
                                    if (direction.geometry != null) {
                                      context
                                          .read<SocketBloc>()
                                          .updateRoute(direction.geometry!);
                                    }
                                  },
                                  onMapRendered: () async {
                                    await initRoute(state);
                                  },
                                  onArrival: () {
                                    showDialog(
                                        barrierDismissible: false,
                                        context: context,
                                        builder: (_) => AlertDialog(
                                              title: const Text('Thông báo'),
                                              content:
                                                  const Text('Bạn đã đến nơi'),
                                              actions: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text('OK'))
                                              ],
                                            ));
                                  },
                                  onMapCreated: (p0) async {
                                    _navigationController = p0;
                                  }),
                            ),
                            BookingContactSection(
                              booking: state.bookingData,
                            ),
                            const Divider(
                              color: AppColors.grayLine,
                              height: 5,
                            ),
                            const BookingBottomSection()
                          ],
                        ),
                      )
                    : Container(),
          ),
        );
      },
    );
  }

  Future<void> initRoute(BookingState state) async {
    var listWaypoint = <LatLng>[];
    var res = await Geolocator.getCurrentPosition();
    listWaypoint.add(LatLng(res.toLatLng().latitude, res.toLatLng().longitude));
    if (state.bookingData.status == BookingStatus.onRide) {
      listWaypoint.add(LatLng(state.bookingData.dropOffLocation.latitude,
          state.bookingData.dropOffLocation.longitude));
    } else {
      listWaypoint.add(LatLng(state.bookingData.pickUpLocation.latitude,
          state.bookingData.pickUpLocation.longitude));
    }

    _navigationController
        ?.buildAndStartNavigation(
            waypoints: listWaypoint, profile: DrivingProfile.motorcycle)
        .then((value) {});
  }
}
