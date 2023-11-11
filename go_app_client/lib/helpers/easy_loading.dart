import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class EasyLoadingHelper{
  static void simplyCustomize(Color loadingColor){
    EasyLoading.instance 
    ..backgroundColor = Colors.transparent
    ..loadingStyle = EasyLoadingStyle.light
    ..indicatorColor = loadingColor
    ..progressColor = loadingColor;
  }
}