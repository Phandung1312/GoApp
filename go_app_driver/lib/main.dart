import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_app_driver/config/routes.dart';
import 'package:go_app_driver/config/theme/app_theme.dart';
import 'package:go_app_driver/core/inject/injection.dart';
import 'package:go_app_driver/presentation/bloc/account/account_cubit.dart';
import 'package:go_app_driver/presentation/bloc/booking/booking_bloc.dart';
import 'package:go_app_driver/presentation/bloc/chat/chat_cubit.dart';
import 'package:go_app_driver/presentation/bloc/history/history_bloc.dart';
import 'package:go_app_driver/presentation/bloc/home/home_cubit.dart';
import 'package:go_app_driver/presentation/bloc/login/login_bloc.dart';
import 'package:go_app_driver/presentation/bloc/register/register_bloc.dart';
import 'package:go_app_driver/presentation/bloc/socket/socket_bloc.dart';
import 'package:go_app_driver/presentation/bloc/statistics/statistics_cubit.dart';
import 'package:go_app_driver/presentation/pages/splash/splash_page.dart';
import 'package:injectable/injectable.dart';
import 'package:toast/toast.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.dev);
  await dotenv.load(fileName: ".env");
  EasyLoading.instance
    ..backgroundColor = Colors.white
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorColor = Colors.green
    ..textColor = Colors.white
    ..maskColor = Colors.green
    ..userInteractions = true
    ..progressColor = Colors.green;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(create: (_) => getIt()),
          BlocProvider<RegisterBloc>(create: (_) => getIt()),
          BlocProvider<HomeCubit>(create: (_) => getIt()),
          BlocProvider<BookingBloc>(create: (_) => getIt()),
          BlocProvider<ChatCubit>(create: (_) => getIt()),
          BlocProvider<AccountCubit>(create: (_) => getIt()),
          BlocProvider<HistoryBloc>(create: (_) => getIt()),
          BlocProvider<SocketBloc>(create: (_) => getIt()),
          BlocProvider<StatisticsCubit>(create: (_) => getIt()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme(),
          onGenerateRoute: AppNavigator.onGenerateRoute,
          home: const SplashPage(),
          builder: EasyLoading.init(),
        ));
  }
}
