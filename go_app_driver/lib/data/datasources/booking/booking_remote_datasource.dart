

import 'package:dartz/dartz.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/network/base_remote_service.dart';
import 'package:go_app_driver/data/api/booking_api_service.dart';
import 'package:go_app_driver/data/models/booking/booking_cancel_request.dart';
import 'package:go_app_driver/data/models/booking/booking_cancel_response.dart';
import 'package:go_app_driver/data/models/booking/booking_model.dart';
import 'package:go_app_driver/domain/entities/booking.dart';
import 'package:go_app_driver/domain/entities/customer_info.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:go_app_driver/domain/entities/filter.dart';
import 'package:go_app_driver/domain/entities/history.dart';
import 'package:injectable/injectable.dart';

abstract class IBookingRemoteDataSource {
  Future<Either<Failure, List<History>>> getBookings(Filter filter);
  Future<Either<Failure, Booking>> getBooking(int bookingId);
  Future<Either<Failure, CustomerInfo>> getCustomerInfo(int customerId);
  Future<Either<Failure, DriverStatus>> changeDriverStatus(int driverId);
  Future<Either<Failure, Booking>> getActiveBooking();
  Future<Either<Failure, BookingCancelResponse>> cancelBooking(
      BookingCancelRequest request);
}

@LazySingleton(as: IBookingRemoteDataSource)
class BookingRemoteDataSource
    with BaseRemoteService
    implements IBookingRemoteDataSource {
  BookingRemoteDataSource(this._bookingApiService);
  final BookingApiService _bookingApiService;

  @override
  Future<Either<Failure, Booking>> getBooking(int bookingId) async {
    var result =
        await callApi(() => _bookingApiService.getBookingInfo(bookingId));
    return result.map((r) => r.maptoEntity());
  }

  @override
  Future<Either<Failure, CustomerInfo>> getCustomerInfo(int customerId) async {
    var result =
        await callApi(() => _bookingApiService.getCustomerInfo(customerId));
    return result.map((r) => r.maptoEntity());
  }

  @override
  Future<Either<Failure, DriverStatus>> changeDriverStatus(int driverId) async {
    EasyLoading.show();
    var result =
        await callApi(() => _bookingApiService.changeDriverStatus(driverId));
    EasyLoading.dismiss();
    return result.map((r) => r.status ?? DriverStatus.unknown);
  }

  @override
  Future<Either<Failure, Booking>> getActiveBooking() async {
    var result = await callApi(() => _bookingApiService.getActiveBooking());
    return result.map((r) => r.maptoEntity());
  }

  @override
  Future<Either<Failure, BookingCancelResponse>> cancelBooking(
      BookingCancelRequest request) async {
    var result = await callApi(
        () => _bookingApiService.cancelBooking(request.bookingId, request));
    return result;
  }

  @override
  Future<Either<Failure, List<History>>> getBookings(Filter filter) async {
    var result = await callApi(() => _bookingApiService.getHistories(
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
}
