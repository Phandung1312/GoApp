

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/data/models/booking/booking_cancel_request.dart';
import 'package:go_app_client/data/models/booking/booking_cancel_response.dart';
import 'package:go_app_client/data/models/booking/booking_request.dart';
import 'package:go_app_client/data/models/history/review_request_model.dart';
import 'package:go_app_client/domain/entities/booking.dart';
import 'package:go_app_client/domain/entities/driver_info.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/domain/entities/map_routing_params.dart';

abstract class BookingRepository{
  Future<Either<Failure, Map<VehicleType, num>>> getBookingPrice(MapRoutingParams routingParams);
  Future<Either<Failure, Booking>> createBooking(BookingRequest bookingRequest);
  Future<Either<Failure, DriverInfo>> getDriverInfo(int driverId);
  Future<Either<Failure, Booking>> getActiveBooking();
  Future<Either<Failure, bool>> createReview(ReviewRequestModel requestModel);

    Future<Either<Failure, BookingCancelResponse>> cancelBooking(
      BookingCancelRequest request);
}