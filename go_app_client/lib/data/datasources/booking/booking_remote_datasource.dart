import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/network/base_remote_service.dart';
import 'package:go_app_client/data/api/booking_api_service.dart';
import 'package:go_app_client/data/models/booking/booking_cancel_request.dart';
import 'package:go_app_client/data/models/booking/booking_cancel_response.dart';
import 'package:go_app_client/data/models/booking/booking_model.dart';
import 'package:go_app_client/data/models/booking/booking_request.dart';
import 'package:go_app_client/data/models/history/review_request_model.dart';
import 'package:go_app_client/domain/entities/booking.dart';
import 'package:go_app_client/domain/entities/driver_info.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/domain/entities/filter.dart';
import 'package:go_app_client/domain/entities/history.dart';
import 'package:injectable/injectable.dart';

abstract class IBookingRemoteDataSource {
  Future<Either<Failure, Map<VehicleType, num>>> getBookingPrice(
      String pickUpLocation, String dropOffLocation);
  Future<Either<Failure, Booking>> createBooking(BookingRequest bookingRequest);

  Future<Either<Failure, DriverInfo>> getDriverInfo(int driverId);
  Future<Either<Failure, Booking>> getActiveBooking();
  Future<Either<Failure, History>> getHistory(int id);
  Future<Either<Failure, bool>> createReview(ReviewRequestModel requestModel);
  Future<Either<Failure, BookingCancelResponse>> cancelBooking(
      BookingCancelRequest request);

  Future<Either<Failure, List<History>>> getBookings(Filter filter);
}

@LazySingleton(as: IBookingRemoteDataSource)
class BookingRemoteDataSource
    with BaseRemoteService
    implements IBookingRemoteDataSource {
  final BookingApiService _apiService;
  BookingRemoteDataSource(this._apiService);
  @override
  Future<Either<Failure, Map<VehicleType, num>>> getBookingPrice(
      String pickUpLocation, String dropOffLocation) async {
    var result = await callApi(
        () => _apiService.getBookingPrice(pickUpLocation, dropOffLocation));
    return result.map((r) => {
          VehicleType.motorcycle: r.amounts?.motorPrice ?? 0,
          VehicleType.car: r.amounts?.carPrice ?? 0
        });
  }

  @override
  Future<Either<Failure, Booking>> createBooking(
      BookingRequest bookingRequest) async {
    var result = await callApi(() => _apiService.createBooking(bookingRequest));
    return result.map((r) => r.maptoEntity());
  }

  @override
  Future<Either<Failure, DriverInfo>> getDriverInfo(int driverId) async {
    var result = await callApi(() => _apiService.getDriverInfo(driverId));
    return result.map((r) => r.maptoEntity());
  }

  @override
  Future<Either<Failure, Booking>> getActiveBooking() async {
    var result = await callApi(() => _apiService.getActiveBooking());
    return result.map((r) => r.maptoEntity());
  }

  @override
  Future<Either<Failure, bool>> createReview(
      ReviewRequestModel requestModel) async {
    var result = await callApi(() => _apiService.createReview(requestModel));
    return result.map((r) => true);
  }

  @override
  Future<Either<Failure, BookingCancelResponse>> cancelBooking(
      BookingCancelRequest request) async {
    var result = await callApi(
        () => _apiService.cancelBooking(request.bookingId, request));
    return result;
  }

  @override
  Future<Either<Failure, List<History>>> getBookings(Filter filter) async {
    var result = await callApi(() => _apiService.getHistories(
        filter.page,
        filter.size,
        filter.status,
        filter.sortType,
        filter.sortField));
    return result.map((r) {
      var models = r.content.map((e) => BookingModel.fromJson(e)).toList();
      return models.map((e) => e.mapToHistory()).toList();
    });
  }
  

  
  @override
  Future<Either<Failure, History>> getHistory(int id) async{
  var result = await callApi(() => _apiService.getBookingById(id));
    return result.map((r) => r.mapToHistory());
  }
}
