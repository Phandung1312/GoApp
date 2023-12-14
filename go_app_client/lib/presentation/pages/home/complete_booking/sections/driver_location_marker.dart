import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/presentation/bloc/driver_location/driver_location_cubit.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

class DriverLocationMarker extends StatelessWidget {
  final VietmapController controller;
  const DriverLocationMarker({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DriverLocationCubit, DriverLocationState>(
      buildWhen: (previous, current) => current is DriverLocationUpdated,
      builder: (context, state) {
        return state is DriverLocationUpdated
            ? StaticMarkerLayer(
                markers: [
                  StaticMarker(
                      width: 50,
                      height: 50,
                      bearing: 0,
                      child: Image(
                          image: state.vehicleType == VehicleType.motorcycle
                              ? AppImages.icTopViewMotorcycle
                              : AppImages.icTopViewCar,
                              fit: BoxFit.cover,
                              width: 50,),
                      latLng: state.location),
                ],
                mapController: controller,
              )
            : Container();
      },
    );
  }
}
