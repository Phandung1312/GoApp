import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/network/network_info.dart';
import 'package:go_app_client/data/datasources/booking/booking_remote_datasource.dart';
import 'package:go_app_client/data/models/booking/booking_cancel_request.dart';
import 'package:go_app_client/data/models/booking/booking_cancel_response.dart';
import 'package:go_app_client/data/models/booking/booking_request.dart';
import 'package:go_app_client/data/models/history/review_request_model.dart';
import 'package:go_app_client/domain/entities/booking.dart';
import 'package:go_app_client/domain/entities/driver_info.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/domain/entities/filter.dart';
import 'package:go_app_client/domain/entities/history.dart';
import 'package:go_app_client/domain/entities/map_routing_params.dart';
import 'package:go_app_client/domain/repositories/booking_repository.dart';
import 'package:go_app_client/extensions/latlng_extension.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BookingRepository)
class BookingRepositoryImpl implements BookingRepository {
  final NetworkInfo _networkInfo;
  final IBookingRemoteDataSource _remoteDataSource;
  BookingRepositoryImpl(this._networkInfo, this._remoteDataSource);
  @override
  Future<Either<Failure, Map<VehicleType, num>>> getBookingPrice(
      MapRoutingParams params) async {
    if (await _networkInfo.isConnected) {
      final result = await _remoteDataSource.getBookingPrice(
          params.pickupLocation!.toUrlValue(),
          params.destinationLocation!.toUrlValue());
      return result;
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, Booking>> createBooking(
      BookingRequest bookingRequest) async {
    if (await _networkInfo.isConnected) {
      final result = await _remoteDataSource.createBooking(bookingRequest);
      return result;
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, DriverInfo>> getDriverInfo(int driverId) async {
    if (await _networkInfo.isConnected) {
      final result = await _remoteDataSource.getDriverInfo(driverId);
      return result;
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, Booking>> getActiveBooking() async {
    if (await _networkInfo.isConnected) {
      var result = await _remoteDataSource.getActiveBooking();
      return result;
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> createReview(
      ReviewRequestModel requestModel) async {
    if (await _networkInfo.isConnected) {
      var result = await _remoteDataSource.createReview(requestModel);
      return result;
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, BookingCancelResponse>> cancelBooking(
      BookingCancelRequest request) async {
    if (await _networkInfo.isConnected) {
      var result = await _remoteDataSource.cancelBooking(request);
      return result;
    } else {
      return Left(NetworkFailure());
    }
  }

    @override
  Future<Either<Failure, List<History>>> getBookings(Filter filter) async{
    if (await _networkInfo.isConnected) {
      var result = await _remoteDataSource.getBookings(filter);
      return result;
    } else {
      return Left(NetworkFailure());
    }
  }
  
  @override
  Future<Either<Failure, History>> getHistoryById(int id) async{
    if (await _networkInfo.isConnected) {
      var result = await _remoteDataSource.getHistory(id);
      return result;
    } else {
      return Left(NetworkFailure());
    }
  }

}
