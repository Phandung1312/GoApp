


import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/domain/entities/statistics.dart';
import 'package:go_app_driver/domain/usecases/statistics/get_statistics_usecase.dart';

abstract class StatisticsRepository{
   Future<Either<Failure, Statistics>> getStatistics(DateFilter filter);
}