import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/data/models/booking/booking_cancel_request.dart';
import 'package:go_app_driver/data/models/booking/booking_cancel_response.dart';
import 'package:go_app_driver/domain/entities/booking.dart';
import 'package:go_app_driver/domain/entities/customer_info.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:go_app_driver/domain/entities/filter.dart';
import 'package:go_app_driver/domain/entities/history.dart';

abstract class BookingRepository {
  Future<Either<Failure, List<History>>> getBookings(Filter filter);
  Future<Either<Failure, Booking>> getBooking(int bookingId);
  Future<Either<Failure, CustomerInfo>> getCustomerInfo(int customerId);
  Future<Either<Failure, DriverStatus>> changeDriverStatus(
      int driverId);
  Future<Either<Failure, Booking>> getActiveBooking();
  Future<Either<Failure, BookingCancelResponse>> cancelBooking(
      BookingCancelRequest request);

}
