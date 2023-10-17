
import 'package:flutter/material.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/images.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppClors.primaryGreen,
        unselectedLabelStyle: const  TextStyle(color: AppClors.itemUnselected),
        backgroundColor: Colors.white,
        currentIndex:   0,
        type: BottomNavigationBarType.fixed,
        items: const  [
          BottomNavigationBarItem(
            icon: ImageIcon(AppImages.icCompass), 
            activeIcon: ImageIcon(AppImages.icCompassSelected),
             label : "Home",
            ),
            BottomNavigationBarItem(
            icon: ImageIcon(AppImages.icInvoice ), 
            activeIcon: ImageIcon(AppImages.icInvoiceSelected),
             label : "Bill",
            ),
            BottomNavigationBarItem(
            icon: ImageIcon(AppImages.icPayment), 
            activeIcon: ImageIcon(AppImages.icPaymentSelected),
             label : "Payment",
            ),
            BottomNavigationBarItem(
           icon: ImageIcon(AppImages.icAccount ), 
            activeIcon: ImageIcon(AppImages.icAccountSelected),
             label : "Account",
            ),
        ]
        ),
    );
  }
}