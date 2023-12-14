


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'history_detail_bloc.freezed.dart';
part 'history_detail_event.dart';
part 'history_detail_state.dart';

class HistoryDetailBloc extends Bloc<HistoryDetailEvent, HistoryDetailState>{
  HistoryDetailBloc(super.initialState);

}