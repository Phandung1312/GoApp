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
  static const icAddImage = _Image('ic_add_image.png');
  static const icDrivingLicense1 = _Image('ic_driving_license_1.png');
  static const icDrivingLicense2 = _Image('ic_driving_license_2.png');
  static const icIdCard = _Image('ic_id_card.png');
  static const icPowerOff = _Image('ic_power_off.png');
  static const icPowerOn = _Image('ic_power_on.png');
  static const icStar = _Image('ic_star.png');
  static const icGPS = _Image('ic_gps.png');
  static const icFocus = _Image('ic_focus.png');

  static const icGreenDot = _Image('ic_green_dot.png');
  static const icRedDot = _Image('ic_red_dot.png');

   static const icUserName = _Image('ic_user_name.png');
  static const icPhone = _Image('ic_phone.png');
  static const icCalendar = _Image('ic_calendar.png');
  
  static const icRegisterDay = _Image('ic_register_day.png');
  static const icGender = _Image('ic_gender.png');
  static const icReview = _Image('ic_review.png');
  static const icLicensePlate = _Image('ic_license_plate.png');
  static const icVehicleType = _Image('ic_vehicle_type.png');

  static const icCar = _Image('ic_car.png');
  static const icMotorbike = _Image('ic_motorbike.png');


  
}