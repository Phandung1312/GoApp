

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:go_app_driver/config/colors.dart';
import 'package:go_app_driver/config/routes.dart';
import 'package:go_app_driver/presentation/bloc/booking/booking_bloc.dart';
import 'package:go_app_driver/presentation/bloc/chat/chat_cubit.dart';

class BookingDetailContactSection extends StatelessWidget {
  const BookingDetailContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    var booking = BlocProvider.of<BookingBloc>(context).state.bookingData;
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
              onTap: () {
                FlutterPhoneDirectCaller.callNumber(booking.customerInfo.phoneNumber);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child:  const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: 30,
                    ),
                    Text(
                      "Gọi điện",
                      style: TextStyle(
                          color: Colors.black, fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
        ),
          const SizedBox(
            height: 100,
            child: VerticalDivider(
              width: 1,
              color: AppColors.grayLine,
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                context.read<ChatCubit>().loadAllMessage(booking.customerInfo);
              Navigator.pushNamed(context, Paths.chat);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child:  const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.message,
                      color: Colors.black,
                      size: 30,
                    ),
                    Text(
                      "Nhắn tin",
                      style: TextStyle(
                          color: Colors.black, fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
            child: VerticalDivider(
              width: 1,
              color: AppColors.grayLine,
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Paths.cancelBooking);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child:  const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.cancel_outlined,
                      color: Colors.red,
                      size: 30,
                    ),
                    Text(
                      "Hủy đơn",
                      style: TextStyle(
                          color: Colors.red, fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}