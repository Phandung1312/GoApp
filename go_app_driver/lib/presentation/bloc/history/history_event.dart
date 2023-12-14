part of 'history_bloc.dart';

@freezed
class HistoryEvent with _$HistoryEvent{
  const factory HistoryEvent.loadAll() = HistoryLoadAll;
  const factory HistoryEvent.loadMore() = HistoryLoadMore;
}