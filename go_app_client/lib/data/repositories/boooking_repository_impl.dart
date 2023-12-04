
import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/network/network_info.dart';
import 'package:go_app_client/data/datasources/booking/booking_remote_datasource.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/domain/entities/map_routing_params.dart';
import 'package:go_app_client/domain/repositories/booking_repository.dart';
import 'package:go_app_client/extensions/latlng_extension.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as : BookingRepository)
class BookingRepositoryImpl implements BookingRepository{
   final NetworkInfo _networkInfo;
  final IBookingRemoteDataSource _remoteDataSource;
  BookingRepositoryImpl(this._networkInfo, this._remoteDataSource);
  @override
  Future<Either<Failure, Map<VehicleType, num>>> getBookingPrice(MapRoutingParams params)  async{
    if(await _networkInfo.isConnected){
      final result = await _remoteDataSource.getBookingPrice(params.pickupLocation!.toUrlValue(), params.destinationLocation!.toUrlValue());
      return result;
    }
    else{
       return Left(NetworkFailure());
    }
  }

}