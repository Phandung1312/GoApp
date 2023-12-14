import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:go_app_driver/domain/entities/history.dart';
import 'package:injectable/injectable.dart';

part 'history_bloc.freezed.dart';
part 'history_event.dart';
part 'history_state.dart';

@injectable
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  int page = 1;
  HistoryBloc() : super(const HistoryState.initial()) {
    on<HistoryLoadAll>(_onLoadAll);
    on<HistoryLoadMore>(_onLoadMore);
  }

  void _onLoadAll(HistoryLoadAll event, Emitter<HistoryState> emit) async {
    emit(const HistoryState.loading());
    await Future.delayed(const Duration(seconds: 2), () {
      var histories = <History>[
        const History(
            bookingStatus: BookingStatus.cancelled,
            vehicleType: VehicleType.CAR,
            to: "Bến xe trung tâm Thành phố Đà Nẵng",
            createAt: "13 thg 12 2023, 08:04"),
        const History(
            bookingStatus: BookingStatus.complete,
            vehicleType: VehicleType.MOTORCYCLE,
            to: "Đại học Bách Khoa Đà Nẵng",
            createAt: "20 thg 9 2023, 21:04"),
        const History(
            bookingStatus: BookingStatus.complete,
            vehicleType: VehicleType.MOTORCYCLE,
            to: "Đại học Bách Khoa Đà Nẵng",
            createAt: "20 thg 9 2023, 21:04"),
        const History(
            bookingStatus: BookingStatus.cancelled,
            vehicleType: VehicleType.CAR,
            to: "Bến xe trung tâm Thành phố Đà Nẵng",
            createAt: "13 thg 12 2023, 08:04"),
        const History(
            bookingStatus: BookingStatus.complete,
            vehicleType: VehicleType.MOTORCYCLE,
            to: "Đại học Bách Khoa Đà Nẵng",
            createAt: "20 thg 9 2023, 21:04"),
        const History(
            bookingStatus: BookingStatus.complete,
            vehicleType: VehicleType.MOTORCYCLE,
            to: "Đại học Bách Khoa Đà Nẵng",
            createAt: "20 thg 9 2023, 21:04"),
        const History(
            bookingStatus: BookingStatus.complete,
            vehicleType: VehicleType.MOTORCYCLE,
            to: "Đại học Bách Khoa Đà Nẵng",
            createAt: "20 thg 9 2023, 21:04"),
      ];
      emit(HistoryState.loadSuccess(histories: histories));
    });
  }

  void _onLoadMore(HistoryLoadMore event, Emitter<HistoryState> emit) async{
    emit(const HistoryLoadingMore());
    await Future.delayed(const Duration(seconds: 2), () {
      emit(const HistoryState.loadMoreSuccess(histories: <History>[
        History(
            bookingStatus: BookingStatus.cancelled,
            vehicleType: VehicleType.CAR,
            to: "Bến xe trung tâm Thành phố Đà Nẵng",
            createAt: "13 thg 12 2023, 08:04"),
        History(
            bookingStatus: BookingStatus.complete,
            vehicleType: VehicleType.MOTORCYCLE,
            to: "Đại học Bách Khoa Đà Nẵng",
            createAt: "20 thg 9 2023, 21:04"),
        History(
            bookingStatus: BookingStatus.complete,
            vehicleType: VehicleType.MOTORCYCLE,
            to: "Đại học Bách Khoa Đà Nẵng",
            createAt: "20 thg 9 2023, 21:04"),
        History(
            bookingStatus: BookingStatus.complete,
            vehicleType: VehicleType.MOTORCYCLE,
            to: "Đại học Bách Khoa Đà Nẵng",
            createAt: "20 thg 9 2023, 21:04"),
      ]));
    });
  }
}
