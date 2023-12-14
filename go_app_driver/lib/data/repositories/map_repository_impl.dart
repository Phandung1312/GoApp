

import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/network/network_info.dart';
import 'package:go_app_driver/data/datasources/map/map_remote_datasource.dart';
import 'package:go_app_driver/domain/entities/map_reverse.dart';
import 'package:go_app_driver/domain/repositories/map_repository.dart';
import 'package:injectable/injectable.dart';




@LazySingleton(as : MapRepository)
class MapRepositoryImpl implements MapRepository{
  MapRepositoryImpl(this._networkInfo,this._remoteDataSource);
  final NetworkInfo _networkInfo;
  final IMapRemoteDataSource _remoteDataSource;
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

}