import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/presentation/bloc/home/home_bloc.dart';

class TypeVihecleCard extends StatelessWidget {
  const TypeVihecleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text("Chọn loại xe",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25)),
          const SizedBox(
            height: 20,
          ),
          Row(
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
                      context.read<HomeBloc>().add(const HomeEvent.selectVehicleType(vehicleType: VehicleType.motorbike));
                    },
                    child: const Center(
                        child: Image(
                            image: AppImages.icMotorbike,
                            fit: BoxFit.cover,
                            width: 40)),
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
                      context.read<HomeBloc>().add(const HomeEvent.selectVehicleType(vehicleType: VehicleType.motorbike));
                    },
                    child: const Center(
                        child: Image(
                            image: AppImages.icCar,
                            fit: BoxFit.cover,
                            width: 40)),
                  ),
                  const SizedBox(height: 5),
                  const Text("Ô tô", style: TextStyle(fontSize: 16))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
