import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:go_app_driver/config/colors.dart';

class ToastHelper {
  static void showToast({required String message}) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColors.primaryGreen,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
