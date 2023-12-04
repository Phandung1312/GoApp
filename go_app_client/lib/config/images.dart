import 'package:flutter/material.dart';

const String _imagePath = 'assets/images';

class _Image extends AssetImage {
  const _Image(String fileName) : super('$_imagePath/$fileName');
}

class AppImages{

  static const appLogo = _Image('app_logo.png');
  static const backgrounPending = _Image('background_pending.png');
  static const icGoogle = _Image('ic_google.png');
  static const icCompass = _Image('ic_compass.png');
  static const icCompassSelected = _Image('ic_compass_selected.png');
  static const icInvoice = _Image('ic_invoice.png');
  static const icInvoiceSelected = _Image('ic_invoice_selected.png');
  static const icPayment = _Image('ic_wallet.png');
  static const icPaymentSelected = _Image('ic_wallet_selected.png');
  static const icAccount = _Image('ic_user.png');
  static const icAccountSelected = _Image('ic_user_selected.png');
  static const icMotorbike = _Image('ic_motorbike.png');
  static const icCar = _Image('ic_car.png');
  static const icMarkerPickpup = _Image('ic_marker_pickup.png');
  static const icMarkerDes = _Image('ic_marker_des.png');
  static const icGreenDot = _Image('ic_green_dot.png');
  static const icRedDot = _Image('ic_red_dot.png');
  static const icMomo = _Image('ic_momo.png');
  static const icVNPay = _Image('ic_vnpay.png');
  static const icDoubleChat = _Image('ic_double_chat.png');
  static const icUserName = _Image('ic_user_name.png');
  static const icPhone = _Image('ic_phone.png');
  static const icCalendar = _Image('ic_calendar.png');
  
  static const icRegisterDay = _Image('ic_register_day.png');
  static const icGender = _Image('ic_gender.png');
  static const icReview = _Image('ic_review.png');
  static const icLicensePlate = _Image('ic_license_plate.png');
  static const icVehicleType = _Image('ic_vehicle_type.png');



 
}