
import 'package:flutter/material.dart';
import 'package:go_app_client/presentation/pages/home/complete_booking/complete_booking_page.dart';
import 'package:go_app_client/presentation/pages/home/input_location/input_location_page.dart';
import 'package:go_app_client/presentation/pages/home/pick_location/pick_location_page.dart';
import 'package:go_app_client/presentation/pages/login/login_page.dart';
import 'package:go_app_client/presentation/pages/main_page.dart';
import 'package:go_app_client/presentation/pages/splash/splash_page.dart';

enum Routes { splash, login, main }

class Paths {
  static const String splash = '/';
  static const String login = '/login';
  static const String main = '/main';
  static const String inputLocation = "/main/inputlocaiton";
  static const String pickLocation = "/main/inputlocation/picklocation";
  static const String completeBooking = "main/completebooking";
}

class AppNavigator {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Paths.splash:
        return _materialRoute(const SplashPage());
      case Paths.login:
        return _materialRoute(const LoginPage());
      case Paths.main:
        return _materialRoute(const MainPage());
      case Paths.inputLocation:
        return _materialRoute(const InputLocationPage());
      case Paths.pickLocation:
        return _materialRoute(const PickLocationPage());
      case Paths.completeBooking:
        return _materialRoute(const CompleteBookingPage());
      default:
        return _materialRoute(const LoginPage());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}