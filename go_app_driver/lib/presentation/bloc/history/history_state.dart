part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState{
  const factory HistoryState.initial() = HistorInitial;
  const factory HistoryState.loading() = HistoryLoading;
  const factory HistoryState.loadSuccess({required List<History> histories}) = HistoryLoadSuccess;
  const factory HistoryState.loadError({required Failure failure}) = HistoryLoadError;
  const factory HistoryState.loadingMore() = HistoryLoadingMore;
  const factory HistoryState.loadMoreSuccess({required List<History> histories}) = HistoryLoadMoreSuccess;
}