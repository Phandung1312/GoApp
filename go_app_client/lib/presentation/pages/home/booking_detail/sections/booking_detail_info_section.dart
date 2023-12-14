import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/domain/entities/booking.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';

class BookingDetailInfoSection extends StatefulWidget {
  const BookingDetailInfoSection({super.key});
  @override
  State<BookingDetailInfoSection> createState() =>
      _BookingDetailInfoSectionState();
}

class _BookingDetailInfoSectionState extends State<BookingDetailInfoSection> {
  late Booking booking;
  @override
  void initState() {
    super.initState();
    var state = BlocProvider.of<BookingBloc>(context).state;
    booking = state.booking!;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(
                image: AppImages.icGreenDot,
                color: Colors.blue,
                width: 20,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    "Điểm đón",
                    style: const TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  Text("48 Hòa Hiệp Bắc, Liên Chiểu, Đà Nẵng")
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
