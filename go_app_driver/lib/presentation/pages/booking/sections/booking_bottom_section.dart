import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_driver/config/colors.dart';
import 'package:go_app_driver/extensions/enum_extension.dart';
import 'package:go_app_driver/presentation/bloc/booking/booking_bloc.dart';

class BookingBottomSection extends StatelessWidget {
  const BookingBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      buildWhen: (previous, current) => current is BookingLoadInfoSuccess || current is BookingStatusChanged,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: InkWell(
            onTap: (){
              context.read<BookingBloc>().add(const BookingEvent.sendBookingStatus());
            },
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                decoration: BoxDecoration(
                    color: AppColors.primaryGreen,
                    borderRadius: BorderRadius.circular(10)),
                child:  Text(
                  state.bookingData.status.statusToDriverAction() ,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                )),
          ),
        );
      },
    );
  }
}
