import 'package:dio/dio.dart';
import 'package:go_app_client/core/network/token_interceptor.dart';
import 'package:go_app_client/data/api/account_api_service.dart';
import 'package:go_app_client/data/api/booking_api_service.dart';
import 'package:go_app_client/data/api/chat_api_service.dart';
import 'package:go_app_client/data/api/map_api_service.dart';

import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  InternetConnectionChecker get connectionChecker =>
      InternetConnectionChecker();

  @Named("Map")
  @lazySingleton
  Dio dio() => Dio();

  @Named("App")
  @lazySingleton
  Dio dioApp() {
    Dio dio = Dio();
    dio.interceptors.add(TokenInterceptor());
    return dio;
  }

  @lazySingleton
  AccountApiService accountApiService(@Named("App") Dio dio) =>
      AccountApiService(dio);
  @lazySingleton
  BookingApiService bookingApiService(@Named('App') Dio dio) =>
      BookingApiService(dio);

  @lazySingleton
  ChatApiService chatApiService(@Named("App") Dio dio) => ChatApiService(dio);

  @lazySingleton
  MapApiService mapApiService(@Named("Map") Dio dio) => MapApiService(dio);

  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
}
