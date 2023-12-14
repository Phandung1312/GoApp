

import 'package:dio/dio.dart';
import 'package:go_app_driver/config/constants.dart';
import 'package:go_app_driver/data/models/map/map_reverse_model.dart';
import 'package:retrofit/retrofit.dart';

part 'map_api_service.g.dart';



@RestApi(baseUrl:  mapUrl)
abstract class MapApiService {
  factory MapApiService(Dio dio, {String baseUrl}) = _MapApiService;

  @GET('reverse/v3')
  Future<HttpResponse<List<MapReverseModel>>> getAddressFromLatLng(
    @Query('apikey') String apiKey,
    @Query('lat') double lat,
    @Query('lng') double lng,
    @Query('cats') int? cats,
  );

}