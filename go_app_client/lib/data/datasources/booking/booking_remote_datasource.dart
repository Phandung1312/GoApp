

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/network/base_remote_service.dart';
import 'package:go_app_client/data/api/booking_api_service.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:injectable/injectable.dart';

abstract class IBookingRemoteDataSource{
  Future<Either<Failure, Map<VehicleType, num>>> getBookingPrice(
    String pickUpLocation, String dropOffLocation
  );
}

@LazySingleton(as : IBookingRemoteDataSource)
class BookingRemoteDataSource with BaseRemoteService implements IBookingRemoteDataSource{
  final BookingApiService _apiService;
  BookingRemoteDataSource(this._apiService);
  @override
  Future<Either<Failure, Map<VehicleType, num>>> getBookingPrice(String pickUpLocation, String dropOffLocation) async{
    var result = await callApi(() => _apiService.getBookingPrice(pickUpLocation, dropOffLocation));
    return result.map((r) => {
      VehicleType.motorcycle : r.amounts?.motorPrice ?? 0,
      VehicleType.car : r.amounts?.carPrice ?? 0
    });
  }

}