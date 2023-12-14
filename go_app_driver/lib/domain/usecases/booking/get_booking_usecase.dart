

import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/usecase/usecase.dart';
import 'package:go_app_driver/domain/entities/booking.dart';
import 'package:go_app_driver/domain/repositories/booking_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetBookingUseCase extends UseCase<Booking, int>{
  final BookingRepository _bookingRepository;
  GetBookingUseCase(this._bookingRepository);
  @override
  Future<Either<Failure, Booking>> call(int params) {
    return _bookingRepository.getBooking(params);
  }
}