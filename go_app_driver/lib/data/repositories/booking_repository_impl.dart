


import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/network/network_info.dart';
import 'package:go_app_driver/data/datasources/booking/booking_remote_datasource.dart';
import 'package:go_app_driver/data/models/booking/driver_status_model.dart';
import 'package:go_app_driver/domain/entities/booking.dart';
import 'package:go_app_driver/domain/entities/customer_info.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:go_app_driver/domain/repositories/booking_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as : BookingRepository)
class BookingRepositoryImpl implements BookingRepository{
  final NetworkInfo _networkInfo;
  final IBookingRemoteDataSource _remoteDataSource;
  BookingRepositoryImpl(this._networkInfo, this._remoteDataSource);
  @override
  Future<Either<Failure, Booking>> getBooking(int bookingId) async{
     if (await _networkInfo.isConnected) {
      var result = await _remoteDataSource.getBooking(bookingId);
      return result;
    } else {
      return Left(NetworkFailure());
    }
  }


  @override
  Future<Either<Failure, CustomerInfo>> getCustomerInfo(int customerId) async{
     if (await _networkInfo.isConnected) {
      var result = await _remoteDataSource.getCustomerInfo(customerId);
      return result;
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, DriverStatus>> changeDriverStatus(DriverStatusModel status) async {
     if (await _networkInfo.isConnected) {
      var result = await _remoteDataSource.changeDriverStatus(status);
      return result;
    } else {
      return Left(NetworkFailure());
    }
  }
  
  @override
  Future<Either<Failure, Booking>> getActiveBooking() async{
    if (await _networkInfo.isConnected) {
      var result = await _remoteDataSource.getActiveBooking();
      return result;
    } else {
      return Left(NetworkFailure());
    }
  }



}