import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/constants.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/core/errors/failures.dart';
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
  Timer? searchOnStoppedMoving;
  late CameraPosition _initialCameraPosition;
  VietmapController? _controller;

  bool isPickupLocation = true;

  @override
  void initState() {
    super.initState();
    LatLng latLng = getCurrentLatLngFromSharedPrefs();
    _initialCameraPosition = CameraPosition(target: latLng, zoom: 15);

    final state = BlocProvider.of<BookingBloc>(context).state;
    state.whenOrNull(
      locatingPickupLocation: () => isPickupLocation = true,
      locatingDesLocation: () => isPickupLocation = false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookingBloc, BookingState>(
      listener: (context, state) {
        state.whenOrNull(
          loadError: (failure) {
            String errorMessage = "";
            switch (failure) {
              case ApiServerFailure:
                errorMessage = (failure as ApiServerFailure).message;
                break;
              default:
                errorMessage = "Đã xảy ra lỗi, vui lòng thử lại sau";
                break;
            }
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(errorMessage),
              action: SnackBarAction(label: "Đã rõ", onPressed: () {}),
            ));
          },
        );
      },
      buildWhen: (previous, current) {
        return current.maybeWhen(
            loadingLocation: () => true,
            loadLocationSuccess: (result) => true,
            loadError: (failure) => true,
            orElse: () => false);
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Stack(alignment: Alignment.center, children: [
              VietmapGL(
                trackCameraPosition: true,
                styleString: mapStyle,
                initialCameraPosition: _initialCameraPosition,
                myLocationEnabled: true,
                onMapCreated: (controller) {
                  setState(() {
                    _controller = controller;
                  });
                },
                onCameraIdle: () {
                  if (!mounted) return;
                  if (searchOnStoppedMoving != null) {
                    setState(() {
                      searchOnStoppedMoving?.cancel();
                    });
                  }
                  setState(() => searchOnStoppedMoving =
                          Timer(const Duration(milliseconds: 200), () {
                        try {
                          context.read<BookingBloc>().add(
                              BookingSearchAddressFromCoordinate(
                                  coordinate:
                                      _controller!.cameraPosition!.target));
                        } catch (e) {
                          debugPrint(e.toString());
                        }
                      }));
                },
                myLocationTrackingMode: MyLocationTrackingMode.TrackingGPS,
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
                                state.whenOrNull(
                                      loadLocationSuccess: (result) =>
                                          result.display,
                                    ) ??
                                    "",
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
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    backgroundColor: state.maybeWhen(
                                          loadingLocation: () => AppColors
                                              .backgroundInactiveButton,
                                              orElse: () => AppColors.primaryGreen
                                        ),
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                onPressed: //state.whenOrNull( loadLocationSuccess: (result) => (){}), 
                                (){},
                                child: state.whenOrNull(
                                        loadingLocation: () => Lottie.asset(
                                            'assets/animations/loading_dots.json',
                                            width: 60,
                                            height: 60
                                            )) ??
                                    Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20),
                                        child: Text(
                                            "Xác nhận điểm ${isPickupLocation ? 'đón' : 'đến'}")))),
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
