import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/theme/app_theme.dart';
import 'package:go_app_client/injection_container.dart';
import 'package:go_app_client/presentation/bloc/login/login_bloc.dart';
import 'package:go_app_client/presentation/pages/login_page.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencise();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home:  BlocProvider<LoginBloc>(
        create: (_) => sl(),
        child: LoginPage(),
      ),
    );
  }
}
