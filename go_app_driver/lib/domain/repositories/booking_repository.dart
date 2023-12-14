

import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/data/models/booking/driver_status_model.dart';
import 'package:go_app_driver/domain/entities/booking.dart';
import 'package:go_app_driver/domain/entities/customer_info.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';

abstract class BookingRepository{
  Future<Either<Failure, Booking>> getBooking(int bookingId);
  Future<Either<Failure, CustomerInfo>> getCustomerInfo(int customerId);
  Future<Either<Failure, DriverStatus>> changeDriverStatus(DriverStatusModel status);
  Future<Either<Failure, Booking>> getActiveBooking();

}