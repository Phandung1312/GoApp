import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/helpers/share_prefereces.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';
import 'package:go_app_client/presentation/pages/home/complete_booking/sections/booking_bottom_card.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

class CompleteBookingPage extends StatefulWidget {
  const CompleteBookingPage({super.key});

  @override
  State<CompleteBookingPage> createState() => _CompleteBookingPageState();
}

class _CompleteBookingPageState extends State<CompleteBookingPage> {
  VietmapController? _controller;
  late CameraPosition _initialCameraPosition;
  @override
  void initState() {
    super.initState();
    LatLng latLng = getCurrentLatLngFromSharedPrefs();
    _initialCameraPosition = CameraPosition(target: latLng, zoom: 15);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookingBloc, BookingState>(
        listener: (context, state) {},
        buildWhen: (previous, current) => current is BookingGetDirectionSuccess,
        builder: (context, state) => SafeArea(
                child: Scaffold(
              body: state is BookingGetDirectionSuccess
                  ? Stack(
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
                                _controller!.addPolyline(PolylineOptions(
                                  geometry: state.listPoints,
                                  polylineColor: AppColors.primaryGreen,
                                  polylineWidth: 7.0,
                                  polylineOpacity: 0.5,
                                  draggable: true));
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
                          const Positioned(
                            bottom: 0,
                            child: BookingBottomCard(),
                          )
                        ]
                      ],
                    )
                  : Container(),
            )));
  }
}
