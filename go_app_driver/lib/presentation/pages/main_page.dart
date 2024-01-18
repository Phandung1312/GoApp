import 'package:flutter/material.dart';
import 'package:go_app_driver/config/colors.dart';
import 'package:go_app_driver/config/images.dart';
import 'package:go_app_driver/presentation/pages/account/account_page.dart';
import 'package:go_app_driver/presentation/pages/history/history_page.dart';
import 'package:go_app_driver/presentation/pages/home/home_page.dart';
import 'package:go_app_driver/presentation/pages/statistical/statistics_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final tabs = [
    const HomePage(),
    const HistoryPage(),
    const StatisticsPage(),
    const AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.primaryGreen,
          unselectedLabelStyle:
              const TextStyle(color: AppColors.itemUnselected),
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AppImages.icCompass),
              activeIcon: ImageIcon(AppImages.icCompassSelected),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AppImages.icInvoice),
              activeIcon: ImageIcon(AppImages.icInvoiceSelected),
              label: "Hoạt động",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AppImages.icPayment),
              activeIcon: ImageIcon(AppImages.icPaymentSelected),
              label: "Thống kê",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AppImages.icAccount),
              activeIcon: ImageIcon(AppImages.icAccountSelected),
              label: "Tài khoản",
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
