import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/domain/entities/driver_info.dart';
import 'package:go_app_client/domain/entities/history.dart';
import 'package:go_app_client/domain/usecases/booking/get_driver_info_usecase.dart';
import 'package:go_app_client/domain/usecases/history/get_history_usecase.dart';
import 'package:injectable/injectable.dart';

part 'history_detail_bloc.freezed.dart';
part 'history_detail_event.dart';
part 'history_detail_state.dart';

@injectable
class HistoryDetailBloc extends Bloc<HistoryDetailEvent, HistoryDetailState> {
  final GetHistoryUseCase _getHistoryUseCase;
  final GetDriverInfoUseCase _getDriverInfoUseCase;
  HistoryDetailBloc(this._getHistoryUseCase, this._getDriverInfoUseCase)
      : super(const HistoryDetailState.initial()){
        on<HistoryDetailLoadHistory>(_onLoad);
        on<HistoryDetailLoadDriverInfo>(_onLoadDriver);
      }

  void _onLoad(
      HistoryDetailLoadHistory event, Emitter<HistoryDetailState> emit) async {
    emit(const HistoryDetailState.loading());
    var either = await _getHistoryUseCase(event.id);
    either.fold((l) => emit(const HistoryDetailState.loadError()),
        (r) => emit(HistoryDetailState.loadSuccess(history: r)));
  }

  void _onLoadDriver(HistoryDetailLoadDriverInfo event,Emitter<HistoryDetailState> emit) async{
    EasyLoading.show();
    emit(const HistoryDetailState.loadingDriver());
    var either = await _getDriverInfoUseCase(event.id);
    EasyLoading.dismiss();
    either.fold((l) => emit(const HistoryDetailState.loadError()),
        (r) => emit(HistoryDetailState.loadDriverSuccess(driverInfo: r)));
  }
}
