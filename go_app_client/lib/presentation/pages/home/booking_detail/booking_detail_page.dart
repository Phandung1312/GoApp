import 'package:flutter/material.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/presentation/pages/home/booking_detail/sections/booking_detail_driver_section.dart';
import 'package:go_app_client/presentation/pages/home/booking_detail/sections/booking_detail_info_section.dart';
import 'package:go_app_client/presentation/widgets/main_tool_bar.dart';

class BookingDetailPage extends StatelessWidget {
  const BookingDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MainToolBar(
          title: "Xem thêm",
        ),
        body: Container(
          color: const Color.fromARGB(255, 219, 217, 217).withOpacity(0.4),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              const BookingDetailDriverSection(),
              const SizedBox(
                height: 5,
              ),
              const BookingDetailInfoSection(),
              const SizedBox(
                height: 5,
              ),
              Material(
                elevation: 2,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, Paths.cancelBooking);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: const Center(
                      child: Text(
                        "Hủy đơn",
                        style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
