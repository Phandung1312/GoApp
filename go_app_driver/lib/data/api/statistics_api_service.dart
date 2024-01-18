



import 'package:dio/dio.dart';
import 'package:go_app_driver/config/constants.dart';
import 'package:go_app_driver/data/models/statistics/statistics_model.dart';
import 'package:retrofit/retrofit.dart';

part 'statistics_api_service.g.dart';
@RestApi(baseUrl : baseUrl )
abstract class StatisticsApiService{
  factory StatisticsApiService(Dio dio, {String baseUrl}) = _StatisticsApiService;
  @GET('drivers/statistics')
  Future<HttpResponse<StatisticsModel>> getStatistics(
    @Query('from') String from,
    @Query('to') String to,
  );
}