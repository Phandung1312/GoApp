import 'package:dio/dio.dart';
import 'package:go_app_client/config/constants.dart';
import 'package:go_app_client/data/models/map_autocomplete_model.dart';
import 'package:go_app_client/data/models/map_place_model.dart';
import 'package:go_app_client/data/models/map_reverse_model.dart';
import 'package:go_app_client/data/models/map_routing_model.dart';
import 'package:retrofit/retrofit.dart';

part 'map_api_service.g.dart';



@RestApi(baseUrl: mapUrl)
abstract class MapApiService {
  factory MapApiService(Dio dio, {String baseUrl}) = _MapApiService;

  @GET('autocomplete/v3')
  Future<HttpResponse<List<MapAutoCompleteModel>>> getAddressesFromText(
      @Query('apikey') String apiKey,
      @Query('text') String query,
      @Query('focus') String focus,
  );

  @GET('reverse/v3')
  Future<HttpResponse<List<MapReverseModel>>> getAddressFromLatLng(
    @Query('apikey') String apiKey,
    @Query('lat') double lat,
    @Query('lng') double lng,
    @Query('cats') int? cats,
  );

  @GET('place/v3')
  Future<HttpResponse<MapPlaceModel>> getPlaceDetail(
    @Query('apikey') String apiKey,
    @Query('refid') String placeId
  );
  @GET('route')
  Future<HttpResponse<MapRoutingModel>> findRoute(
    @Query('api-version') String apiVersion,
    @Query('apikey') String apiKey,
    @Query('point') List<String> points,
    @Query('optimize') bool optimize,
    @Query('vehicle') String vehicle
  );  
}
