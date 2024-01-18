import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/config/theme/app_theme.dart';
import 'package:go_app_client/core/inject/injection.dart';
import 'package:go_app_client/helpers/easy_loading.dart';
import 'package:go_app_client/presentation/bloc/account/account_bloc.dart';
import 'package:go_app_client/presentation/bloc/chat/chat/chat_cubit.dart';
import 'package:go_app_client/presentation/bloc/driver_location/driver_location_cubit.dart';
import 'package:go_app_client/presentation/bloc/history/history_bloc.dart';
import 'package:go_app_client/presentation/bloc/history_detail/history_detail_bloc.dart';
import 'package:go_app_client/presentation/bloc/home/home_cubit.dart';
import 'package:go_app_client/presentation/bloc/login/login_bloc.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';
import 'package:go_app_client/presentation/bloc/review/review_cubit.dart';
import 'package:go_app_client/presentation/pages/login/register_page.dart';
import 'package:go_app_client/presentation/pages/splash/splash_page.dart';

import 'package:injectable/injectable.dart';
import 'package:toast/toast.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  await dotenv.load(fileName: ".env");
  EasyLoadingHelper.simplyCustomize(Colors.green);
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
        BlocProvider<HomeCubit>(create: (_) => getIt()),
        BlocProvider<BookingBloc>(create: (_) => getIt()),
        BlocProvider<HistoryBloc>(create: (_) => getIt()),
        BlocProvider<HistoryDetailBloc>(create: (_) => getIt()),
        BlocProvider<ChatCubit>(create: (_) => getIt()),
        BlocProvider<DriverLocationCubit>(create: (_) => getIt()),
        BlocProvider<ReviewCubit>(create: (_) => getIt()),
        BlocProvider<AccountBloc>(create: (_) => getIt()),
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: theme(),
      onGenerateRoute: AppNavigator.onGenerateRoute,
      home: const SplashPage(),
      builder: EasyLoading.init(),
    ),
    );
  }
}
