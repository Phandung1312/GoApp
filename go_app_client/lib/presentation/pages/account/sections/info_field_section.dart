import 'package:flutter/material.dart';
import 'package:go_app_client/config/colors.dart';


Widget info(
    {required ImageProvider<Object> image,
    required String lable,
    required String content}) {
  return Container(
    margin: const EdgeInsets.only(top: 20),
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      children: [
        Image(
          image: image,
          fit: BoxFit.cover,
          width: 30,
          color: AppColors.primaryGreen,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          lable,
          style: const TextStyle(
              fontFamily: 'Nunito', fontSize: 14, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          width: 50,
        ),
        Expanded(
            child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            content,
            style: const TextStyle(
                fontFamily: 'Nunito',
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
        )),
        const SizedBox(
          width: 20,
        )
      ],
    ),
  );
}
