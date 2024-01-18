

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/usecase/usecase.dart';

import 'package:go_app_client/domain/entities/history.dart';
import 'package:go_app_client/domain/repositories/booking_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetHistoryUseCase extends UseCase<History, int>{
  final BookingRepository _repository;
  GetHistoryUseCase(this._repository);

  @override
  Future<Either<Failure, History>> call(int params) {
    return _repository.getHistoryById(params);
  }

}