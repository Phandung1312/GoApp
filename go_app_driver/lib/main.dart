



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_driver/config/routes.dart';
import 'package:go_app_driver/config/theme/app_theme.dart';
import 'package:go_app_driver/core/inject/injection.dart';
import 'package:go_app_driver/presentation/bloc/login/login_bloc.dart';
import 'package:go_app_driver/presentation/pages/login/login_page.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      onGenerateRoute: AppNavigator.onGenerateRoute,
      home:  BlocProvider<LoginBloc>(
        create: (_) => getIt(),
        child: const LoginPage(),
      ),
    );
  }
}