import 'package:flutter/material.dart';

const String _imagePath = 'assets/images';

class _Image extends AssetImage {
  const _Image(String fileName) : super('$_imagePath/$fileName');
}

class AppImages{
  static const icGoogle = _Image('ic_google.png');

  static const icCompass = _Image('ic_compass.png');
  static const icCompassSelected = _Image('ic_compass_selected.png');
  static const icInvoice = _Image('ic_invoicee.png');
  static const icInvoiceSelected = _Image('ic_invoice_selected.png');
  static const icPayment = _Image('ic_wallet.png');
  static const icPaymentSelected = _Image('ic_wallet_selected.png');
  static const icAccount = _Image('ic_user.png');
  static const icAccountSelected = _Image('ic_user_selected.png');
  static Future percacheAssets(BuildContext context) async {
          await precacheImage(icGoogle, context);
          await precacheImage(icCompass, context);
          await precacheImage(icCompassSelected, context);
          await precacheImage(icInvoice, context);
          await precacheImage(icInvoiceSelected, context);
          await precacheImage(icPayment, context);
          await precacheImage(icPaymentSelected, context);
          await precacheImage(icAccount, context);
          await precacheImage(icAccountSelected, context);
  }
}