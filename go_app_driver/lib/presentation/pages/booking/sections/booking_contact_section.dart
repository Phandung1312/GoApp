import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:go_app_driver/config/routes.dart';
import 'package:go_app_driver/domain/entities/booking.dart';
import 'package:go_app_driver/presentation/bloc/chat/chat_cubit.dart';

class BookingContactSection extends StatelessWidget {
  final Booking booking;
  const BookingContactSection({super.key, required this.booking});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
               FlutterPhoneDirectCaller.callNumber(booking.customerInfo.phoneNumber);
            },
            child: const Column(
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
          GestureDetector(
            onTap: () {
              context.read<ChatCubit>().loadAllMessage(booking.customerInfo);
              Navigator.pushNamed(context, Paths.chat);
            },
            child: const Column(
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
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Paths.bookingDetail);
            },
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.more_vert,
                  color: Colors.black,
                  size: 30,
                ),
                Text(
                  "Xem thêm",
                  style: TextStyle(
                      color: Colors.black, fontSize: 16),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
