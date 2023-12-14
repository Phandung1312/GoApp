part of 'history_detail_bloc.dart';

@freezed
class HistoryDetailEvent with _$HistoryDetailEvent{
  const factory HistoryDetailEvent.loadHistory() = HistoryDetailLoadHistory;
}