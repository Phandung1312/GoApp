
import 'package:dio/dio.dart';
import 'package:go_app_driver/data/api/account_api_service.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@module
abstract class RegisterModule{
  @lazySingleton
  InternetConnectionChecker get connectionChecker => InternetConnectionChecker();

  @lazySingleton
  Dio dio() => Dio();

  @lazySingleton
  AccountApiService accountApiService(Dio dio) => AccountApiService(dio);
  
}