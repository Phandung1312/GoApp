import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_driver/presentation/bloc/booking/booking_bloc.dart';

class ChatBarSection extends StatelessWidget {
  const ChatBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 25,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              CircleAvatar(
                radius: 25,
                backgroundImage: Image.network(
                  state.bookingData.customerInfo.avatarUrl,
                ).image,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  state.bookingData.customerInfo.fullName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.phone,
                size: 30,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        );
      },
    );
  }
}
