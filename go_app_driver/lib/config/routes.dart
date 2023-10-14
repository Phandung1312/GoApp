import 'package:flutter/material.dart';
import 'package:go_app_driver/presentation/pages/login/login_page.dart';
import 'package:go_app_driver/presentation/pages/login/register_page.dart';

enum Routes { splash, login, register, home }

class Paths {
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';

 
}

class AppNavigator {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Paths.login:
        return _materialRoute(const LoginPage());
      case Paths.register:
        return _materialRoute(const RegisterPage());
      default:
        return _materialRoute(const LoginPage());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
