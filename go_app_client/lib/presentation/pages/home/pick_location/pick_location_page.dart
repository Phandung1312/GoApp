import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/utils/debounce.dart';
import 'package:go_app_client/domain/entities/map_picker_data.dart';
import 'package:go_app_client/helpers/share_prefereces.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

class PickLocationPage extends StatefulWidget {
  const PickLocationPage({super.key});

  @override
  State<PickLocationPage> createState() => _PickLocationState();
}

class _PickLocationState extends State<PickLocationPage> {
  final Debounce _debounce = Debounce(delay: const Duration(milliseconds: 500));
  late CameraPosition _initialCameraPosition;
  VietmapController? _controller;
  String address = "";
  bool isPickupLocation = true;

  @override
  void initState() {
    super.initState();
    final state = BlocProvider.of<BookingBloc>(context).state;
    LatLng latLng = getCurrentLatLngFromSharedPrefs();

    if (state is BookingLocatingLocation) {
      var selectedLocation = state.selectedLocation;
      if (selectedLocation != null) {
        latLng = LatLng(selectedLocation.latitude, selectedLocation.longitude);
      }
      isPickupLocation = state.isPickupLocation;
    }
    _initialCameraPosition = CameraPosition(target: latLng, zoom: 15);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookingBloc, BookingState>(
      listener: (context, state) {
        if (state is BookingLoadError) {
          var failure = state.failure;
          String errorMessage = "";

          switch (failure.runtimeType) {
            case ApiServerFailure:
              errorMessage = (failure as ApiServerFailure).message;
              break;
            case ApiTimeOutFailure:
              errorMessage = "Không thể kết nối đến server";
            default:
              errorMessage = "Đã xảy ra lỗi, vui lòng thử lại sau";
              break;
          }
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(errorMessage),
            action: SnackBarAction(label: "Đã rõ", onPressed: () {}),
          ));
        }

        if (state is BookingLoadLocationSuccess) {
          setState(() {
            address = state.result.display;
          });
        }

        if (state is BookingGetDirectionSuccess) {
          Navigator.pushNamedAndRemoveUntil(context, Paths.completeBooking,
              (route) => route.settings.name == Paths.main);
        }
      },
      buildWhen: (previous, current) =>
          current is BookingLoadingLocation ||
          current is BookingLoadLocationSuccess ||
          current is BookingLoadError,
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Stack(alignment: Alignment.center, children: [
              VietmapGL(
                trackCameraPosition: true,
                styleString: dotenv.env['MAP_STYLE'] ?? "",
                initialCameraPosition: _initialCameraPosition,
                myLocationEnabled: true,
                onMapCreated: (controller) {
                  setState(() {
                    _controller = controller;
                  });
                },
                onCameraIdle: () {
                  if (!mounted) return;
                  _debounce.run(() {
                    if (_controller?.cameraPosition != null) {
                      try {
                        context.read<BookingBloc>().add(
                            BookingSearchAddressFromCoordinate(
                                coordinate:
                                    _controller!.cameraPosition!.target));
                      } catch (e) {
                        debugPrint(e.toString());
                      }
                    }
                  });
                },
                minMaxZoomPreference: const MinMaxZoomPreference(7, 30),
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
                  width: MediaQuery.of(context).size.width,
                  bottom: 0,
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: AppColors.backgroundInputLocation,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.location_on_sharp,
                                  color: isPickupLocation
                                      ? Colors.blue
                                      : Colors.red),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Text(
                                address,
                                style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              )),
                              const Icon(Icons.favorite_outline)
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: double.infinity,
                            child: state is BookingLoadingLocation
                                ? Container(
                                    decoration: const BoxDecoration(
                                        color:
                                            AppColors.backgroundInactiveButton,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Lottie.asset(
                                        'assets/animations/loading_dots.json',
                                        height: 60),
                                  )
                                : ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        backgroundColor: AppColors.primaryGreen,
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    onPressed: state
                                            is BookingLoadLocationSuccess
                                        ? () {
                                            MapPickerData mapPickerData =
                                                MapPickerData(
                                                    latLng: _controller!
                                                        .cameraPosition!.target,
                                                    display:
                                                        state.result.display);
                                            context.read<BookingBloc>().add(
                                                BookingEvent.pickAddress(
                                                    mapPickerData:
                                                        mapPickerData));
                                            Navigator.pop(context);
                                          }
                                        : null,
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20),
                                        child: Text(
                                          "Xác nhận điểm ${isPickupLocation ? 'đón' : 'đến'}",
                                          style: TextStyle(color: Colors.white),
                                        )))),
                      ],
                    ),
                  )),
              Image(
                image: isPickupLocation
                    ? AppImages.icMarkerPickpup
                    : AppImages.icMarkerDes,
                height: 50,
                fit: BoxFit.cover,
              )
            ]),
          ),
        );
      },
    );
  }
}
