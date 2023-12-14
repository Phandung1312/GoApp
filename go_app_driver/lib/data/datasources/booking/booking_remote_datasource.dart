import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/network/base_remote_service.dart';
import 'package:go_app_driver/core/utils/mapper/enum_mapper.dart';
import 'package:go_app_driver/data/api/booking_api_service.dart';
import 'package:go_app_driver/data/models/booking/driver_status_model.dart';
import 'package:go_app_driver/domain/entities/booking.dart';
import 'package:go_app_driver/domain/entities/customer_info.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:injectable/injectable.dart';

abstract class IBookingRemoteDataSource {
  Future<Either<Failure, Booking>> getBooking(int bookingId);
  Future<Either<Failure, CustomerInfo>> getCustomerInfo(int customerId);
  Future<Either<Failure, DriverStatus>> changeDriverStatus(
      DriverStatusModel status);
  Future<Either<Failure, Booking>> getActiveBooking();
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
  Future<Either<Failure, DriverStatus>> changeDriverStatus(
      DriverStatusModel status) async {
    var requestBody = <String, dynamic>{
      'status': const DriverStatusConverter()
          .toJson(status.driverStatus ?? DriverStatus.unknown)
    };

    var result = await callApi(() => _bookingApiService.changeDriverStatus(
        status.driverId ?? 0, requestBody));
    return result.map((r) => r.driverStatus ?? DriverStatus.unknown);
  }

  @override
  Future<Either<Failure, Booking>> getActiveBooking() async {
    var result = await callApi(() => _bookingApiService.getActiveBooking());
    return result.map((r) => r.maptoEntity());
  }
}
