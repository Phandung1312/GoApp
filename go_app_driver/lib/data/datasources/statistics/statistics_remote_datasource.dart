import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/network/base_remote_service.dart';
import 'package:go_app_driver/data/api/statistics_api_service.dart';
import 'package:go_app_driver/domain/entities/statistics.dart';
import 'package:go_app_driver/domain/usecases/statistics/get_statistics_usecase.dart';
import 'package:injectable/injectable.dart';

abstract class IStatisticsRemoteDataSource{
   Future<Either<Failure, Statistics>> getStatistics(DateFilter filter);
}

@LazySingleton(as : IStatisticsRemoteDataSource)
class StatisticsRemoteDataSource with BaseRemoteService implements IStatisticsRemoteDataSource{
  final StatisticsApiService _apiService;
  StatisticsRemoteDataSource(this._apiService);
  @override
  Future<Either<Failure, Statistics>> getStatistics(DateFilter filter) async {
    var result = await callApi(() => _apiService.getStatistics(filter.from, filter.to));
    return result.map((r) => r.maptoEntity());
  }

}