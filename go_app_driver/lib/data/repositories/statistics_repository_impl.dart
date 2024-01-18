

import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/network/network_info.dart';
import 'package:go_app_driver/data/datasources/statistics/statistics_remote_datasource.dart';
import 'package:go_app_driver/domain/entities/statistics.dart';
import 'package:go_app_driver/domain/repositories/statistics_repository.dart';
import 'package:go_app_driver/domain/usecases/statistics/get_statistics_usecase.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as : StatisticsRepository)
class StatisticsRepositoryImpl implements StatisticsRepository{
   final NetworkInfo _networkInfo;
  final IStatisticsRemoteDataSource _remoteDataSource;
  StatisticsRepositoryImpl(this._networkInfo, this._remoteDataSource);
  @override
  Future<Either<Failure, Statistics>> getStatistics(DateFilter filter) async{
    if(await _networkInfo.isConnected){
      final result = await _remoteDataSource.getStatistics(filter);
      return result;
    }
    else{
      return Left(NetworkFailure());
    }
  }

}