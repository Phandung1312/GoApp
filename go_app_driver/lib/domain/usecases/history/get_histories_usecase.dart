

import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/usecase/usecase.dart';
import 'package:go_app_driver/domain/entities/filter.dart';
import 'package:go_app_driver/domain/entities/history.dart';
import 'package:go_app_driver/domain/repositories/booking_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetHistoriesUseCase extends UseCase<List<History>, Filter>{
  final BookingRepository _repository;
  GetHistoriesUseCase(this._repository);
  @override
  Future<Either<Failure, List<History>>> call(Filter params) {
    return _repository.getBookings(params);
  }

}