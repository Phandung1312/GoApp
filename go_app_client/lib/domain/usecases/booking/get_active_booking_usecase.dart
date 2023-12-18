

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/usecase/usecase.dart';
import 'package:go_app_client/domain/entities/booking.dart';
import 'package:go_app_client/domain/repositories/booking_repository.dart';
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