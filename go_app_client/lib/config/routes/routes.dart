import 'package:flutter/material.dart';
import 'package:go_app_client/presentation/pages/home/booking_rating/booking_review.dart';
import 'package:go_app_client/presentation/pages/home/chat/chat_page.dart';
import 'package:go_app_client/presentation/pages/home/complete_booking/complete_booking_page.dart';
import 'package:go_app_client/presentation/pages/home/driver_profile/driver_profile_page.dart';
import 'package:go_app_client/presentation/pages/home/input_location/input_location_page.dart';
import 'package:go_app_client/presentation/pages/home/pick_location/pick_location_page.dart';
import 'package:go_app_client/presentation/pages/login/login_page.dart';
import 'package:go_app_client/presentation/pages/login/register_page.dart';
import 'package:go_app_client/presentation/pages/main_page.dart';
import 'package:go_app_client/presentation/pages/splash/splash_page.dart';

enum Routes { splash, login, main }

class Paths {
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String main = '/main';
  static const String inputLocation = "inputlocaiton";
  static const String pickLocation = "inputlocation/picklocation";
  static const String completeBooking = "completebooking";
  static const String chat = "completebooking/chat";
  static const String driverInfo = "completebooking/driverinfo";
  static const String review = "review";
}

class AppNavigator {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Paths.splash:
        return _materialRoute(const SplashPage(), settings);
      case Paths.login:
        return _materialRoute(const LoginPage(), settings);
      case Paths.register:
        return _materialRoute(const RegisterPage(), settings);
      case Paths.main:
        return _materialRoute(const MainPage(), settings);
      case Paths.inputLocation:
        return _materialRoute(const InputLocationPage(), settings);
      case Paths.pickLocation:
        return _materialRoute(const PickLocationPage(), settings);
      case Paths.completeBooking:
        return _materialRoute(const CompleteBookingPage(), settings);
      case Paths.chat:
        return _materialRoute(const ChatPage(), settings);
      case Paths.driverInfo:
        return _materialRoute(const DriverProfilePage(), settings);
      case Paths.review:
        return _materialRoute(const BookingReviewPage(), settings);
      default:
        return _materialRoute(const LoginPage(), settings);
    }
  }

  static Route<dynamic> _materialRoute(Widget view, RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => view, settings: settings);
  }
}
