

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/domain/entities/history.dart';
import 'package:injectable/injectable.dart';

part 'history_bloc.freezed.dart';
part 'history_event.dart';
part 'history_state.dart';

@injectable
class HistoryBloc extends Bloc<HistoryEvent, HistoryState>{
  HistoryBloc() : super(const HistoryState.initial()){
    on(_onLoadAll);
  }

  void _onLoadAll(HistoryLoadAll event,Emitter<HistoryState> emit) async{
    emit(const HistoryState.loading());
    await Future.delayed(const Duration(seconds: 2), () {
      var histories = <History>[
        const History(
          bookingStatus: BookingStatus.done,
          vehicleType: VehicleType.motorcycle,
          to: "Đại học Bách Khoa Đà Nẵng",
          createAt: "20 thg 9 2023, 21:04"
        ),
        const History(
          bookingStatus: BookingStatus.canceled,
          vehicleType: VehicleType.car,
          to: "Bến xe trung tâm Thành phố Đà Nẵng",
          createAt: "13 thg 12 2023, 08:04"
        ),
      ];
      emit(HistoryState.loadSuccess(histories: histories));
    });
  }
}