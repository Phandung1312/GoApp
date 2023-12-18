import 'package:flutter/material.dart';
import 'package:go_app_driver/presentation/pages/booking/booking_page.dart';
import 'package:go_app_driver/presentation/pages/booking_detail/booking_detail_page.dart';
import 'package:go_app_driver/presentation/pages/cancel_booking/cancel_booking_page.dart';
import 'package:go_app_driver/presentation/pages/chat/chat_page.dart';
import 'package:go_app_driver/presentation/pages/login/login_page.dart';
import 'package:go_app_driver/presentation/pages/login/pending_page.dart';
import 'package:go_app_driver/presentation/pages/login/register_page.dart';
import 'package:go_app_driver/presentation/pages/main_page.dart';
import 'package:go_app_driver/presentation/pages/splash/splash_page.dart';

enum Routes { splash, login, register, home }

class Paths {
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String pending = '/pending';
  static const String main = '/main';
  static const String booking = '/booking';
  static const String bookingDetail = '/detail';
  static const String chat = '/chat';
  static const String account = '/account';
  static const String cancelBooking = '/cancel';
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
      case Paths.pending:
        return _materialRoute(const PendingPage(), settings);
      case Paths.main:
        return _materialRoute(const MainPage(), settings);
      case Paths.booking:
        return _materialRoute(const BookingPage(), settings);
      case Paths.bookingDetail:
        return _materialRoute(const BookingDetailPage(), settings);
      case Paths.chat:
        return _materialRoute(const ChatPage(), settings);
      case Paths.cancelBooking:
        return _materialRoute(const CancelBookingPage(), settings);
      default:
        return _materialRoute(const LoginPage(), settings);
    }
  }

  static Route<dynamic> _materialRoute(Widget view, RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => view, settings: settings);
  }
}
