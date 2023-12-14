import 'package:flutter/material.dart';
import 'package:go_app_client/presentation/pages/home/booking_detail/sections/booking_detail_info_section.dart';
import 'package:go_app_client/presentation/widgets/main_tool_bar.dart';

class BookingDetailPage extends StatelessWidget {
  const BookingDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar:  MainToolBar(title: "Xem thêm",),
        body: Column(
          children: [
             BookingDetailInfoSection()
          ],
        ),
      ),
    );
  }
}