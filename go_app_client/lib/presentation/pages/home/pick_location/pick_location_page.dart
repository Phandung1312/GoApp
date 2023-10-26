import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/constants.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/helpers/share_prefereces.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class PickLocationPage extends StatefulWidget {
  const PickLocationPage({super.key});

  @override
  State<PickLocationPage> createState() => _PickLocationState();
}

class _PickLocationState extends State<PickLocationPage> {
  late MapboxMapController controller;

  late CameraPosition _initialCameraPosition;

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

  _onMapCreated(MapboxMapController controller) async {
    this.controller = controller;
  }

  _onStyleLoadedCallback() async {}
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Stack(
              alignment: Alignment.center,
              children: [
              MapboxMap(
                  styleString: outdoorsMapStyle,
                  accessToken: dotenv.env["MAPBOX_ACCESS_TOKEN"],
                  initialCameraPosition: _initialCameraPosition,
                  onMapCreated: _onMapCreated,
                  onStyleLoadedCallback: _onStyleLoadedCallback,
                  myLocationEnabled: true,
                  myLocationTrackingMode: MyLocationTrackingMode.TrackingGPS,
                  minMaxZoomPreference: const MinMaxZoomPreference(7, 30)),
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
                      child: const Icon(Icons.arrow_back_ios_new, color: Colors.black,))),
              Positioned(
                  width: MediaQuery.of(context).size.width,
                  bottom: 0,
                  child: Container(
                    color: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: AppColors.backgroundInputLocation,
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.location_on_sharp,
                                  color:
                                      isPickupLocation ? Colors.blue : Colors.red),
                              const SizedBox(
                                width: 10,
                              ),
                              const Expanded(
                                  child: Text(
                                "247 Phạm Như Xương, Hòa Khánh Nam, Liên Chiểu, Đà Nẵng",
                                style: TextStyle(
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
                                  padding: const EdgeInsets.symmetric(vertical: 20),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10))),
                                  backgroundColor: AppColors.primaryGreen,
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              onPressed: () {},
                              child: Text(
                                  "Xác nhận điểm ${isPickupLocation ? 'đón' : 'đến'}")),
                        ),
                      ],
                    ),
                  )),
                    Image(image :isPickupLocation? AppImages.icMarkerPickpup : AppImages.icMarkerDes, height: 50, fit: BoxFit.cover,)
            ]),
          ),
        );
      },
    );
  }
}
