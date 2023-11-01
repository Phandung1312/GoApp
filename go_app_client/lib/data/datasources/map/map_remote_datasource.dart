import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/network/base_remote_service.dart';
import 'package:go_app_client/data/api/map_api_service.dart';
import 'package:go_app_client/data/mappers/map_autocomplete_mapper.dart';
import 'package:go_app_client/data/mappers/map_reverse_mapper.dart';
import 'package:go_app_client/data/models/map_autocomplete_model.dart';
import 'package:go_app_client/data/models/map_reverse_model.dart';
import 'package:go_app_client/domain/entities/map_autocomplete.dart';
import 'package:go_app_client/domain/entities/map_reverse.dart';
import 'package:go_app_client/extensions/latlng_extension.dart';
import 'package:injectable/injectable.dart';

abstract class IMapRemoteDataSource {
  Future<Either<Failure, List<MapAutoComplete>>> getAddressesFromText(
      String query);
  Future<Either<Failure, MapReverse>> getAddressFromLatLng(
      {required double lat, required double lng, int? cats});
}

String apiKey = dotenv.env['MAP_API_KEY'] ?? "";

@LazySingleton(as: IMapRemoteDataSource)
class MapRemoteDataSource
    with BaseRemoteService
    implements IMapRemoteDataSource {
  MapRemoteDataSource(
      this._mapAutoCompleteMapper, this._mapApiService, this._mapReverseMapper);
  final MapAutoCompleteMapper _mapAutoCompleteMapper;
  final MapReverseMapper _mapReverseMapper;
  final MapApiService _mapApiService;

  @override
  Future<Either<Failure, List<MapAutoComplete>>> getAddressesFromText(
      String query) async {
    var location = await Geolocator.getCurrentPosition();

    var result = await callApi<List<MapAutoCompleteModel>>(() => _mapApiService.getAddressesFromText(
        apiKey, query, location.toLatLng().toUrlValue()));
    return result.map((r) => _mapAutoCompleteMapper.mapToListEntity(r));
  }

  @override
  Future<Either<Failure, MapReverse>> getAddressFromLatLng(
      {required double lat, required double lng, int? cats}) async {
    var result = await callApi<List<MapReverseModel>>(
        () => _mapApiService.getAddressFromLatLng(apiKey, lat, lng, cats));
    return result.map((r) => _mapReverseMapper.maptoEntity(r[0]));
  }
}
