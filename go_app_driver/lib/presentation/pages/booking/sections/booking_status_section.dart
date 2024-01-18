import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_driver/config/colors.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:go_app_driver/extensions/enum_extension.dart';
import 'package:go_app_driver/presentation/bloc/booking/booking_bloc.dart';

class BookingStatusSection extends StatelessWidget {
  const BookingStatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      buildWhen: (previous, current) =>
          current is BookingLoadInfoSuccess || current is BookingStatusChanged,
      builder: (context, state) {
        var bookingStatus = state.bookingData.status;
        return Column(
          children: [
            Text(
              bookingStatus.toName(),
              style: TextStyle(
                  color: bookingStatus == BookingStatus.found || bookingStatus == BookingStatus.arrrivedPickup
                      ? Colors.blue
                      : bookingStatus == BookingStatus.onRide
                          ? Colors.red
                          : AppColors.primaryGreen,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(state.bookingData.customerInfo.fullName,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 18,
                    fontWeight: FontWeight.w700)),
          ],
        );
      },
    );
  }
}
