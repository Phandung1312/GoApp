part of 'history_detail_bloc.dart';

@freezed
class HistoryDetailState with _$HistoryDetailState{
  const factory HistoryDetailState.initial() = HistoryDetailInitial;
  const factory HistoryDetailState.loading() = HistoryDetailLoading;
  const factory HistoryDetailState.loadSuccess({required History history}) = HistoryDetailLoadSuccess;
  const factory HistoryDetailState.loadDriverSuccess({required DriverInfo driverInfo}) = HistoryDetailLoadDriverSuccess;
  const factory HistoryDetailState.loadingDriver() = HistoryDetailLoadingDriver;
  const factory HistoryDetailState.loadError() = HistoryDetailLoadError;
}