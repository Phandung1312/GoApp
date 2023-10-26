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

 
}