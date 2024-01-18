import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/config/styles.dart';
import 'package:go_app_client/domain/entities/booking.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/helpers/map_info.dart';
import 'package:go_app_client/helpers/share_prefereces.dart';
import 'package:go_app_client/helpers/toast.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';
import 'package:go_app_client/presentation/bloc/driver_location/driver_location_cubit.dart';
import 'package:go_app_client/presentation/bloc/home/home_cubit.dart';
import 'package:go_app_client/presentation/pages/home/complete_booking/booking_bottom_view.dart';
import 'package:go_app_client/presentation/pages/home/complete_booking/sections/driver_location_marker.dart';
import 'package:go_app_client/presentation/widgets/loading_overlay.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

class CompleteBookingPage extends StatefulWidget {
  const CompleteBookingPage({super.key});

  @override
  State<CompleteBookingPage> createState() => _CompleteBookingPageState();
}

class _CompleteBookingPageState extends State<CompleteBookingPage> {
  VietmapController? _controller;
  late CameraPosition _initialCameraPosition;
  Line? bookingLine;
  Line? driverLine;
  bool visiblleDriverIcon = true;
  bool isFirstVisibleDriverLocation = true;
  BookingBloc? _bloc;
  HomeCubit? _homeCubit;
  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<BookingBloc>(context);
    _homeCubit = BlocProvider.of<HomeCubit>(context);
    LatLng latLng = getCurrentLatLngFromSharedPrefs();
    _initialCameraPosition = CameraPosition(target: latLng, zoom: 15);
  }

  @override
  void dispose() {
    _bloc?.add(const BookingEvent.reset());
    _homeCubit?.onCheckBooking();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookingBloc, BookingState>(
        listener: (context, state) {
          if (state is BookingDriverRouteUpdated) {
            if (isFirstVisibleDriverLocation) {
              var driverLocationState =
                  context.read<DriverLocationCubit>().state;
              if (driverLocationState is DriverLocationUpdated) {
                _controller?.animateCamera(CameraUpdate.newLatLngZoom(
                    LatLng(driverLocationState.driverLocation.location.latitude,
                        driverLocationState.driverLocation.location.longitude),
                    15));
              }
              isFirstVisibleDriverLocation = false;
            }
            _controller?.clearLines();
            _controller?.addPolyline(PolylineOptions(
                geometry: state.driverRoute,
                polylineColor: Colors.blue,
                polylineWidth: 5.0,
                polylineOpacity: 0.8));
            return;
          }
          if (state is BookingStatusUpdated) {
            if (state.booking?.status == BookingStatus.onRide) {
              setState(() {
                visiblleDriverIcon = false;
              });
              _controller?.clearLines();
              _controller?.addPolyline(PolylineOptions(
                  geometry: state.path!.points,
                  polylineColor: AppColors.primaryGreen,
                  polylineWidth: 5.0,
                  polylineOpacity: 0.5));
              _controller?.animateCamera(CameraUpdate.newLatLngBounds(
                  state.path!.focus ??
                      LatLngBounds(
                          southwest: const LatLng(0, 0),
                          northeast: const LatLng(0, 0)),
                  left: 50,
                  right: 50,
                  bottom: 150));
              return;
            }

            if (state.booking?.status == BookingStatus.arrrivedPickup) {
              ToastHelper.showToast(
                  message: "Tài xế đã tới nơi đón bạn, hãy ra xe ngay");
            }
          }
          if (state is BookingLoadError) {
            ToastHelper.showToast(message: "Đã có lỗi xảy ra, hãy thử lại");
            Navigator.pop(context);
          }
        },
        buildWhen: (previous, current) =>
            current is BookingGetDirectionSuccess ||
            current is BookingLoadingData ||
            current is BookingLoadError ||
            current is BookingLoadDataSuccess ||
            current is BookingFoundingDriver,
        builder: (context, state) => SafeArea(
                child: Scaffold(
              body: state is BookingLoadingData
                  ? const Center(
                      child: spinKitWave,
                    )
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        VietmapGL(
                          trackCameraPosition: true,
                          initialCameraPosition: _initialCameraPosition,
                          styleString: dotenv.env['MAP_STYLE'] ?? "",
                          onMapCreated: (controller) {
                            setState(() {
                              _controller = controller;
                            });
                          },
                          onMapRenderedCallback: () {
                            if (state is BookingLoadDriverSuccess ||
                                state is BookingLoadDataSuccess) {
                              _controller?.clearLines();
                              return;
                            }
                            _controller?.addPolyline(PolylineOptions(
                                geometry: state.path!.points,
                                polylineColor: AppColors.primaryGreen,
                                polylineWidth: 5.0,
                                polylineOpacity: 0.8));
                            _controller?.animateCamera(
                                CameraUpdate.newLatLngBounds(
                                    state.path!.focus ??
                                        LatLngBounds(
                                            southwest: const LatLng(0, 0),
                                            northeast: const LatLng(0, 0)),
                                    left: 50,
                                    right: 50,
                                    bottom: 150));
                          },
                          myLocationEnabled: true,
                          minMaxZoomPreference:
                              const MinMaxZoomPreference(7, 30),
                        ),
                        Positioned(
                            top: 20,
                            left: 20,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    backgroundColor: Colors.white),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Colors.black,
                                ))),
                        Positioned(
                            top: 60,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Text(
                                  "${MapInfo.getDistance(state.path!.distance)}km, ${MapInfo.getTravelTime(state.path!.time)} phút",
                                  style: Styles.titleCardText,
                                ),
                              ),
                            )),
                        if (_controller != null) ...[
                          MarkerLayer(
                              ignorePointer: true,
                              markers: [
                                Marker(
                                    height: 30,
                                    width: 30,
                                    alignment: Alignment.bottomCenter,
                                    child: const Image(
                                      image: AppImages.icMarkerPickpup,
                                      height: 30,
                                      width: 30,
                                      fit: BoxFit.cover,
                                    ),
                                    latLng: state
                                            .mapRoutingParams?.pickupLocation ??
                                        const LatLng(0, 0))
                              ],
                              mapController: _controller!),
                          MarkerLayer(
                              ignorePointer: true,
                              markers: [
                                Marker(
                                    height: 30,
                                    width: 30,
                                    alignment: Alignment.bottomCenter,
                                    child: const Image(
                                      image: AppImages.icMarkerDes,
                                      height: 30,
                                      width: 30,
                                      fit: BoxFit.cover,
                                    ),
                                    latLng: state.mapRoutingParams
                                            ?.destinationLocation ??
                                        const LatLng(0, 0))
                              ],
                              mapController: _controller!),
                          DriverLocationMarker(controller: _controller!),
                          Positioned(
                            bottom: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                if (visiblleDriverIcon) ...[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20, bottom: 10),
                                    child: InkWell(
                                      onTap: () async {
                                        var driverLocationState = context
                                            .read<DriverLocationCubit>()
                                            .state;
                                        if (driverLocationState
                                            is DriverLocationUpdated) {
                                          _controller?.animateCamera(
                                              CameraUpdate.newLatLngZoom(
                                                  LatLng(
                                                      driverLocationState
                                                          .driverLocation
                                                          .location
                                                          .latitude,
                                                      driverLocationState
                                                          .driverLocation
                                                          .location
                                                          .longitude),
                                                  15));
                                        } else {
                                          ToastHelper.showToast(
                                              message:
                                                  "Chưa xác định được vị trí tài xế");
                                        }
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.white),
                                        padding: const EdgeInsets.all(10),
                                        child: const Image(
                                          image: AppImages.icDriver,
                                          fit: BoxFit.cover,
                                          width: 25,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20, bottom: 20),
                                  child: InkWell(
                                    onTap: () async {
                                      Position locationData =
                                          await Geolocator.getCurrentPosition();
                                      _controller?.animateCamera(
                                          CameraUpdate.newLatLngZoom(
                                              LatLng(locationData.latitude,
                                                  locationData.longitude),
                                              16));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.white),
                                      padding: const EdgeInsets.all(10),
                                      child: const Image(
                                        image: AppImages.icFocus,
                                        fit: BoxFit.cover,
                                        width: 25,
                                      ),
                                    ),
                                  ),
                                ),
                                const BookingBottomView(),
                              ],
                            ),
                          )
                        ],
                      ],
                    ),
            )));
  }
}
