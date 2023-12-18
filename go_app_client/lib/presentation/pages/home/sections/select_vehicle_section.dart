import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';

class SelectVehicleSection extends StatelessWidget {
  const SelectVehicleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  padding: const EdgeInsets.all(15),
                  shape: const CircleBorder(),
                  backgroundColor: AppColors.buttonVihecleType),
              onPressed: () {
                
                context.read<BookingBloc>().add(
                    const BookingEvent.selectVehicleType(
                        vehicleType: VehicleType.motorcycle));
                Navigator.pushNamed(context, Paths.inputLocation);
              },
              child: const Center(
                  child: Image(
                      image: AppImages.icMotorbike,
                      fit: BoxFit.cover,
                      width: 60)),
            ),
            const SizedBox(height: 5),
            const Text("Xe máy", style: TextStyle(fontSize: 16))
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  padding: const EdgeInsets.all(15),
                  shape: const CircleBorder(),
                  backgroundColor: AppColors.buttonVihecleType),
              onPressed: () {
                context.read<BookingBloc>().add(
                    const BookingEvent.selectVehicleType(
                        vehicleType: VehicleType.car));
                Navigator.pushNamed(context, Paths.inputLocation);
              },
              child: const Center(
                  child: Image(
                      image: AppImages.icCar, fit: BoxFit.cover, width: 60)),
            ),
            const SizedBox(height: 5),
            const Text("Ô tô", style: TextStyle(fontSize: 16))
          ],
        )
      ],
    );
  }
}
