

import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/usecase/usecase.dart';
import 'package:go_app_driver/data/models/booking/driver_status_model.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:go_app_driver/domain/repositories/booking_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ChangeDriverStatusUseCase extends UseCase<DriverStatus, int>{
  final BookingRepository _bookingRepository;
  ChangeDriverStatusUseCase(this._bookingRepository);
  @override
  Future<Either<Failure, DriverStatus>> call(int params) {
    return _bookingRepository.changeDriverStatus(params);
  }

}