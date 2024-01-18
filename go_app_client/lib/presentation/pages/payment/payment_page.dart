import 'package:flutter/material.dart';
import 'package:go_app_client/presentation/widgets/main_tool_bar.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: MainToolBar(title: "Thanh toán", isBack: false),
      body: Column(children: []),
    ));
  }
}
