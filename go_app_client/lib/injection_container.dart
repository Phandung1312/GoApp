import 'package:get_it/get_it.dart';
import 'package:go_app_client/presentation/bloc/account/account_bloc.dart';
import 'package:go_app_client/presentation/bloc/home/home_bloc.dart';
import 'package:go_app_client/presentation/bloc/invoice/invoice_bloc.dart';
import 'package:go_app_client/presentation/bloc/login/login_bloc.dart';
import 'package:go_app_client/presentation/bloc/main/main_bloc.dart';
import 'package:go_app_client/presentation/bloc/payment/payment_bloc.dart';


final sl = GetIt.instance;

Future<void> initializeDependencise() async {

  sl.registerFactory<LoginBloc>(() => LoginBloc());
  sl.registerFactory<MainBloc>(() => MainBloc());
  sl.registerFactory<HomeBloc>(() => HomeBloc());
  sl.registerFactory<InvoiceBloc>(() => InvoiceBloc());
  sl.registerFactory<PaymentBloc>(() => PaymentBloc());
  sl.registerFactory<AccountBloc>(() => AccountBloc());
} 