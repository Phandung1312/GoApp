

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/network/base_remote_service.dart';
import 'package:go_app_driver/data/api/map_api_service.dart';
import 'package:go_app_driver/data/models/map/map_reverse_model.dart';
import 'package:go_app_driver/domain/entities/map_reverse.dart';
import 'package:injectable/injectable.dart';

abstract class IMapRemoteDataSource {
 
  Future<Either<Failure, MapReverse>> getAddressFromLatLng(
      {required double lat, required double lng, int? cats});
 
}

String apiKey = dotenv.env['MAP_API_KEY'] ?? "";

@LazySingleton(as : IMapRemoteDataSource)
class MapRemoteDataSource with BaseRemoteService implements IMapRemoteDataSource{
  MapRemoteDataSource( this._mapApiService);
  final MapApiService _mapApiService;
    @override
  Future<Either<Failure, MapReverse>> getAddressFromLatLng(
      {required double lat, required double lng, int? cats}) async {
    var result = await callApi<List<MapReverseModel>>(
        () => _mapApiService.getAddressFromLatLng(apiKey, lat, lng, cats));
    return result.map((r) => r[0].maptoEntity());
  }

}
