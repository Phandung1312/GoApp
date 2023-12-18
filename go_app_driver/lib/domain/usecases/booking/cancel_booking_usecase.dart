

import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/usecase/usecase.dart';
import 'package:go_app_driver/data/models/booking/booking_cancel_request.dart';
import 'package:go_app_driver/data/models/booking/booking_cancel_response.dart';
import 'package:go_app_driver/domain/repositories/booking_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CancelBookingUseCase extends UseCase<BookingCancelResponse, BookingCancelRequest>{
  final BookingRepository _repository;
  CancelBookingUseCase(this._repository);
  @override
  Future<Either<Failure, BookingCancelResponse>> call(BookingCancelRequest params) {
    return _repository.cancelBooking(params);
  }

}