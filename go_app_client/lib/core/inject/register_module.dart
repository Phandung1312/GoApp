
import 'package:dio/dio.dart';
import 'package:go_app_client/data/api/account_api_service.dart';
import 'package:go_app_client/data/api/map_api_service.dart';

import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule{
  @lazySingleton
  InternetConnectionChecker get connectionChecker => InternetConnectionChecker();

  @lazySingleton
  Dio dio() => Dio();

  @lazySingleton
  AccountApiService accountApiService(Dio dio) => AccountApiService(dio);

  @lazySingleton
  MapApiService mapApiService(Dio dio) => MapApiService(dio);
  
  @preResolve
  Future<SharedPreferences> get sharedPreferences => SharedPreferences.getInstance();
}