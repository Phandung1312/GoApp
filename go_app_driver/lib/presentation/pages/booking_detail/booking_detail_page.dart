import 'package:flutter/material.dart';
import 'package:go_app_driver/config/colors.dart';
import 'package:go_app_driver/presentation/pages/booking_detail/setions/booking_detail_contact_section.dart';
import 'package:go_app_driver/presentation/pages/booking_detail/setions/booking_detail_info_setion.dart';
import 'package:go_app_driver/presentation/widgets/main_tool_bar.dart';

class BookingDetailPage extends StatelessWidget {
  const BookingDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: MainToolBar(
          title: "Xem thêm",
        ),
        body: Column(
          children: [
            BookingDetailInfoSection(),
             SizedBox(
              height: 20,
            ),
             Divider(
              height: 1,
              color: AppColors.grayLine,
            ),
            BookingDetailContactSection(),
             Divider(
              height: 1,
              color: AppColors.grayLine,
            ),
          ],
        ),
      ),
    );
  }
}
