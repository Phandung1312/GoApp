import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class EasyLoadingHelper{
  static void simplyCustomize(Color loadingColor){
    EasyLoading.instance 
    ..backgroundColor = Colors.white
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorColor = Colors.green
    ..textColor = Colors.white
    ..maskColor = Colors.green
    ..userInteractions = true
    ..progressColor = Colors.green;
  }
}