import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/data/models/booking/booking_cancel_request.dart';
import 'package:go_app_client/helpers/toast.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';
import 'package:go_app_client/presentation/widgets/main_tool_bar.dart';

class CancelBookingPage extends StatefulWidget {
  const CancelBookingPage({super.key});

  @override
  State<CancelBookingPage> createState() => _CancelBookingPageState();
}

class _CancelBookingPageState extends State<CancelBookingPage> {
  String currentOption = "CUSTOMER";
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocListener<BookingBloc, BookingState>(
      listener: (context, state) {
        if (state is BookingCancelSuccess) {
          ToastHelper.showToast(message: "Đơn hàng của bạn đã được hủy");
          Navigator.pushNamedAndRemoveUntil(
              context, Paths.main, (route) => false);
        }
      },
      child: SafeArea(
        child: Scaffold(
          appBar: const MainToolBar(
            title: "Hủy chuyến xe",
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Lí do hủy đơn đến từ",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              RadioListTile(
                  activeColor: AppColors.primaryGreen,
                  title: const Text("Khách hàng"),
                  value: "CUSTOMER",
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value ?? "";
                    });
                  }),
              RadioListTile(
                  activeColor: AppColors.primaryGreen,
                  title: const Text("Tài xế"),
                  value: "DRIVER",
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value ?? "";
                    });
                  }),
              Container(
                margin: const EdgeInsets.all(15),
                child: TextField(
                  controller: controller,
                  maxLines: 5,
                  minLines: 1,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 15),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: "Nhập lí do hủy",
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.6))),
                ),
              ),
              InkWell(
                onTap: () {
                  var request = BookingCancelRequest(
                    reasonType: currentOption,
                    content: controller.text,
                  );
                  context
                      .read<BookingBloc>()
                      .add(BookingEvent.cancel(request: request));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(15),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: AppColors.primaryGreen,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      "Gửi",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
