import 'package:dio/dio.dart';
import 'package:go_app_driver/core/network/token_interceptor.dart';
import 'package:go_app_driver/data/api/account_api_service.dart';
import 'package:go_app_driver/data/api/booking_api_service.dart';
import 'package:go_app_driver/data/api/chat_api_service.dart';
import 'package:go_app_driver/data/api/map_api_service.dart';
import 'package:go_app_driver/data/api/statistics_api_service.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  InternetConnectionChecker get connectionChecker =>
      InternetConnectionChecker();

  @Named("App")
  @lazySingleton
  Dio dioApp() {
    Dio dio = Dio();
    dio.interceptors.add(TokenInterceptor());
    return dio;
  }
  @Named("Map")
  @lazySingleton
  Dio dio() => Dio();

  @lazySingleton
  AccountApiService accountApiService(@Named("App") Dio dio) =>
      AccountApiService(dio);
  @lazySingleton
  BookingApiService bookingApiService(@Named("App") Dio dio) =>
      BookingApiService(dio);

  @lazySingleton
  ChatApiService chatApiService(@Named("App") Dio dio) =>
      ChatApiService(dio);
  @lazySingleton
  StatisticsApiService statisticsApiService(@Named("App") Dio dio) =>
      StatisticsApiService(dio);
  @lazySingleton
  MapApiService mapApiService(@Named("Map") Dio dio) => MapApiService(dio);
  
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
}
