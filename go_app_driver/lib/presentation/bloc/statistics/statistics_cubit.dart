import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/domain/entities/statistics.dart';
import 'package:go_app_driver/domain/usecases/statistics/get_statistics_usecase.dart';
import 'package:injectable/injectable.dart';

part 'statistics_cubit.freezed.dart';
part 'statistics_state.dart';

@injectable
class StatisticsCubit extends Cubit<StatisticsState> {
  final GetStatisticsUseCase _getStatisticsUseCase;

  StatisticsCubit(this._getStatisticsUseCase)
      : super(const StatisticsState.initial());

  void onLoad(DateFilter filter) async {

    emit(const StatisticsState.loading());
    var either = await _getStatisticsUseCase(filter);
    either.fold((l) => emit(const StatisticsState.loadError()),
        (r) => emit(StatisticsState.loadSuccess(r)));
  }
}
