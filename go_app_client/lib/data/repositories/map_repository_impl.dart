

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/network/network_info.dart';
import 'package:go_app_client/data/datasources/map/map_remote_datasource.dart';
import 'package:go_app_client/domain/entities/map_autocomplete.dart';
import 'package:go_app_client/domain/entities/map_place.dart';
import 'package:go_app_client/domain/entities/map_reverse.dart';
import 'package:go_app_client/domain/entities/map_routing.dart';
import 'package:go_app_client/domain/entities/map_routing_params.dart';
import 'package:go_app_client/domain/repositories/map_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as : MapRepository)
class MapRepositoryImpl implements MapRepository{
  MapRepositoryImpl(this._networkInfo,this._remoteDataSource);
  final NetworkInfo _networkInfo;
  final IMapRemoteDataSource _remoteDataSource;
  @override
  Future<Either<Failure, List<MapAutoComplete>>> getAddressesFromText(String query) async {
    if(await _networkInfo.isConnected){
      final result = await _remoteDataSource.getAddressesFromText(query);
      return result;
    }
    else{
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, MapReverse>> getAddressFromLatLng({required double lat, required double lng, int? cats}) async {
    if(await _networkInfo.isConnected){
      final result = await _remoteDataSource.getAddressFromLatLng(lat: lat, lng: lng);
      return result;
    }
    else{
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, MapPlace>> getPlaceDetail({required String placeId}) async{
   if(await _networkInfo.isConnected){
    final result = await _remoteDataSource.getPlaceDetail(placeId);
    return result;
   }
   else{
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, MapRouting>> findRout({required MapRoutingParams params}) async {
    if(await _networkInfo.isConnected){
      final result = await _remoteDataSource.findRoute(params);
      return result;
    }
    else{
      return Left(NetworkFailure());
    }
  }



}