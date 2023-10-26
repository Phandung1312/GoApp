

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/helpers/share_prefereces.dart';
import 'package:go_app_client/presentation/bloc/home/home_bloc.dart';
import 'package:go_app_client/presentation/pages/home/sections/type_vihecle_bottom_card.dart';

import 'package:mapbox_gl/mapbox_gl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late MapboxMapController controller;

  late CameraPosition _initialCameraPosition;

  @override
  void initState() {
    super.initState();
    LatLng latLng = getCurrentLatLngFromSharedPrefs();
    _initialCameraPosition = CameraPosition(target: latLng, zoom: 15);
  }

  _onMapCreated(MapboxMapController controller) async {
    this.controller = controller;
  }

  _onStyleLoadedCallback() async {}

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        state.whenOrNull(
          goToPickLocation: (){
            Navigator.pushNamed(context, Paths.inputLocation);
          },
        );
      },
      builder: (context, state) {
        return Stack(alignment: Alignment.center, children: [
          MapboxMap(
              accessToken: dotenv.env["MAPBOX_ACCESS_TOKEN"],
              initialCameraPosition: _initialCameraPosition,
              onMapCreated: _onMapCreated,
              onStyleLoadedCallback: _onStyleLoadedCallback,
              myLocationEnabled: true,
              myLocationTrackingMode: MyLocationTrackingMode.TrackingGPS,
              minMaxZoomPreference: const MinMaxZoomPreference(7, 30),
              myLocationRenderMode: MyLocationRenderMode.COMPASS,
               
              ),
          state.maybeWhen(
            showVehicleType: () =>
                const Positioned(bottom: 0, child: TypeVihecleCard()),
            orElse: () => Positioned(
              width: MediaQuery.of(context).size.width * 0.8,
              bottom: 20,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    backgroundColor: AppColors.primaryGreen,
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                onPressed: () {
                  context.read<HomeBloc>().add(const HomeEvent.startBooking());
                },
                child: const Text("Đặt xe ngay"),
              ),
            ),
          ),
        ]);
      },
    );
  }
}
