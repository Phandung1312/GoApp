


import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/usecase/usecase.dart';
import 'package:go_app_driver/domain/entities/statistics.dart';
import 'package:go_app_driver/domain/repositories/statistics_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetStatisticsUseCase extends UseCase<Statistics, DateFilter>{
  final StatisticsRepository _repository;
  GetStatisticsUseCase(this._repository);
  @override
  Future<Either<Failure, Statistics>> call(DateFilter params) {
    return _repository.getStatistics(params);
  }

}

class DateFilter{
  final String from;
  final String to;
  DateFilter({required this.from, required this.to});
}