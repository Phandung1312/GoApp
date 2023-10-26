
import 'package:flutter/material.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/presentation/pages/home/home_page.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final tabs = [
    HomePage()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.primaryGreen,
          unselectedLabelStyle: const  TextStyle(color: AppColors.itemUnselected),
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
          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          ),
      ),
    );
  }
}