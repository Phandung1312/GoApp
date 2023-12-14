

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/usecase/usecase.dart';
import 'package:go_app_client/data/models/booking/booking_request.dart';
import 'package:go_app_client/domain/entities/booking.dart';
import 'package:go_app_client/domain/repositories/booking_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CreateBookingUseCase extends UseCase<Booking, BookingRequest>{
   final BookingRepository _repository;
  CreateBookingUseCase(this._repository);
  
  @override
  Future<Either<Failure, Booking>> call(BookingRequest params) {
    return _repository.createBooking(params);
  }

}