

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/usecase/usecase.dart';
import 'package:go_app_client/domain/entities/filter.dart';
import 'package:go_app_client/domain/entities/history.dart';
import 'package:go_app_client/domain/repositories/booking_repository.dart';

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