

import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/usecase/usecase.dart';
import 'package:go_app_driver/domain/entities/booking.dart';
import 'package:go_app_driver/domain/repositories/booking_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetActiveBookingUseCase extends NoPramsUseCase<Booking>{
  final BookingRepository _bookingRepository;
  GetActiveBookingUseCase(this._bookingRepository);
  @override
  Future<Either<Failure, Booking>> call() {
    return _bookingRepository.getActiveBooking();
  }

}