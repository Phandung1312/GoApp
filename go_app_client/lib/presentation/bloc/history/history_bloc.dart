

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/domain/entities/filter.dart';
import 'package:go_app_client/domain/entities/history.dart';
import 'package:go_app_client/domain/usecases/history/get_histories_usecase.dart';
import 'package:injectable/injectable.dart';

part 'history_bloc.freezed.dart';
part 'history_event.dart';
part 'history_state.dart';

@injectable
class HistoryBloc extends Bloc<HistoryEvent, HistoryState>{
 final GetHistoriesUseCase _getHistoriesUseCase;
  Filter filter = const Filter();
  HistoryBloc(this._getHistoriesUseCase) : super(const HistoryState.initial()) {
    on<HistoryLoadAll>(_onLoadAll);
    on<HistoryLoadMore>(_onLoadMore);
  }

   void _onLoadAll(HistoryLoadAll event, Emitter<HistoryState> emit) async {
    filter = filter.copyWith(page: 0);
    emit(const HistoryState.loading());
    var either = await _getHistoriesUseCase(filter);
    either.fold((l) => null, (r) {
      emit(HistoryState.loadSuccess(histories: r));
    });
  }

  void _onLoadMore(HistoryLoadMore event, Emitter<HistoryState> emit) async {
    emit(const HistoryLoadingMore());
    filter = filter.copyWith(page: filter.page + 1);
    var either = await _getHistoriesUseCase(filter);
    either.fold(
        (l) => null, (r) => emit(HistoryState.loadMoreSuccess(histories: r)));
  }
}