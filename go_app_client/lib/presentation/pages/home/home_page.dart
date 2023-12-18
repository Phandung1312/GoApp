import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';

import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';

import 'package:go_app_client/presentation/bloc/home/home_cubit.dart';
import 'package:go_app_client/presentation/pages/home/sections/select_vehicle_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().onCheckBooking();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Image(
                  image: AppImages.appLogo,
                  width: 80,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Tìm kiếm xe nhanh chóng cùng với Go",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 20),
            ),
            const Image(
              image: AppImages.homeBackground,
              height: 300,
            ),
            const SizedBox(
              height: 50,
            ),
            if (state is HomeBookingExists) ...[
              const Text("Bạn đang thực hiện một cuốc xe",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              GestureDetector(
                onTap: (){
                  context.read<BookingBloc>().add(BookingLoadBookingData(booking: state.booking));
                  Navigator.pushNamed(context, Paths.completeBooking);
                },
                child: Container(
                  margin: const  EdgeInsets.all(20),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration:  BoxDecoration(
                    color: AppColors.primaryGreen,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const  Center(
                    child: Text("Xem chi tiết chuyến xe", style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                    ),),
                  ),
                ),
              )
            ] else
              const SelectVehicleSection()
          ],
        );
      },
    );
  }
}
