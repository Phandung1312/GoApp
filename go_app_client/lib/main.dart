import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/config/theme/app_theme.dart';
import 'package:go_app_client/core/inject/injection.dart';
import 'package:go_app_client/presentation/bloc/history/history_bloc.dart';
import 'package:go_app_client/presentation/bloc/home/home_bloc.dart';
import 'package:go_app_client/presentation/bloc/login/login_bloc.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';
import 'package:go_app_client/presentation/pages/splash/splash_page.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(create: (_) => getIt()),
        BlocProvider<HomeBloc>(create: (_) => getIt()),
        BlocProvider<BookingBloc>(create: (_) => getIt()),
        BlocProvider<HistoryBloc>(create: (_) => getIt()),
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: theme(),
      onGenerateRoute: AppNavigator.onGenerateRoute,
      home: SplashPage(),
      builder: EasyLoading.init(),
    ),
    );
  }
}
