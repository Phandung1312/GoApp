import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/helpers/share_prefereces.dart';
import 'package:go_app_client/presentation/bloc/home/home_bloc.dart';
import 'package:go_app_client/presentation/pages/home/sections/type_vihecle_bottom_card.dart';

import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late CameraPosition _initialCameraPosition;
  @override
  void initState() {
    super.initState();
    LatLng latLng = getCurrentLatLngFromSharedPrefs();
    _initialCameraPosition = CameraPosition(target: latLng, zoom: 15);
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Stack(alignment: Alignment.center, children: [
          VietmapGL(
            styleString: dotenv.env['MAP_STYLE'] ?? "",
            initialCameraPosition: _initialCameraPosition,
            myLocationEnabled: true,
            myLocationTrackingMode: MyLocationTrackingMode.TrackingGPS,
            minMaxZoomPreference: const MinMaxZoomPreference(7, 30),
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
                  child: const Text("Đặt xe ngay", style: TextStyle(
                    color: Colors.white
                  ),),
                ),
            ),
          ),
        ]);
      },
    );
  }
}
