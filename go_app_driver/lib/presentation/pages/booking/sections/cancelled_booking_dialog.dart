import 'package:flutter/material.dart';
import 'package:go_app_driver/config/colors.dart';
import 'package:go_app_driver/config/images.dart';

class CancelledBookingDialog extends StatelessWidget {
  const CancelledBookingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 0,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Rất tiếc cuốc xe đã bị hủy",
          style: TextStyle(
              color: Colors.red, fontSize: 18, fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 20,
        ),
        const Image(
          image: AppImages.imageSorry,
          height: 150,
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              
                color: AppColors.primaryGreen,
                borderRadius: BorderRadius.circular(5)),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text(
              "OK",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ]),
    );
  }
}
