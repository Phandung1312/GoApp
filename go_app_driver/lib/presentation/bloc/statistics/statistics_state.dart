part of  'statistics_cubit.dart';


@freezed
class StatisticsState with _$StatisticsState{
  const factory StatisticsState.initial() = StatisticsInitial;
  const factory StatisticsState.loading() = StatisticsLoading;
  const factory StatisticsState.loadError() = StatisticsLoadError;
  const factory StatisticsState.loadSuccess(Statistics statistics) = StatisticsLoadSuccess;
}