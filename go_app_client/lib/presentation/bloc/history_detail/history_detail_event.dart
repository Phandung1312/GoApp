part of 'history_detail_bloc.dart';

@freezed
class HistoryDetailEvent with _$HistoryDetailEvent{
  const factory HistoryDetailEvent.loadHistory({required int id}) = HistoryDetailLoadHistory;
  const factory HistoryDetailEvent.loadDriverInfo({required int id}) = HistoryDetailLoadDriverInfo;
}