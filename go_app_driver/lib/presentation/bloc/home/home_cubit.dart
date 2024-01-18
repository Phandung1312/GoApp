import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_driver/domain/entities/booking.dart';
import 'package:go_app_driver/domain/entities/driver_info.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:go_app_driver/domain/usecases/account/get_account_usecase.dart';
import 'package:go_app_driver/domain/usecases/booking/change_driver_status_usecase.dart';
import 'package:go_app_driver/domain/usecases/booking/get_active_booking_usecase.dart';
import 'package:go_app_driver/helpers/toast.dart';
import 'package:go_app_driver/presentation/bloc/socket/socket_bloc.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final SocketBloc socketBloc;
  StreamSubscription? socketSubscription;
  final GetAccountUseCase _getAccountUseCase;
  final ChangeDriverStatusUseCase _changeDriverStatusUseCase;
  final GetActiveBookingUseCase _getActiveBookingUseCase;
  HomeCubit(this.socketBloc, this._getAccountUseCase,
      this._changeDriverStatusUseCase, this._getActiveBookingUseCase)
      : super(HomeInitial()) {
    if (!socketBloc.client.isActive) {
      socketBloc.add(const SocketEvent.connect());
    }

    socketSubscription = socketBloc.stream.listen((socketState) {
      socketState.whenOrNull(receivedBookingStatus: (data) {
        if (data.status == BookingStatus.cancelled) {
          ToastHelper.showToast(
              message: "Rất tiếc khách hàng đã hủy cuốc xe này");
          emit(HomeLoadAccountSuccess(driverInfo: state.driverInfo));
        }
      }, receivedBooking: (bookingId) {
        emit(HomeReceivedBooking(
            driverInfo: state.driverInfo, bookingId: bookingId));
      });
    });
  }

  void onReload() async {
    var value =
        await Future.wait([_getAccountUseCase(), _getActiveBookingUseCase()]);

    if (value[0].isLeft()) {
      return;
    }
    var driverInfo =
        value[0].getOrElse(() => const DriverInfo()) as DriverInfo?;
    if (value[1].isLeft()) {
      emit(HomeLoadAccountSuccess(driverInfo: driverInfo!));
      return;
    }

    var booking = value[1].getOrElse(() => const Booking()) as Booking?;
    socketBloc.scheduleSendLocation();

    emit(HomeReceivedBooking(driverInfo: driverInfo!, bookingId: booking!.id));
  }

  void onChangeDriverStatus() async {
    var either = await _changeDriverStatusUseCase(state.driverInfo.id);
    either.fold((l) => null, (r) {
      var currentInfo = state.driverInfo.copyWith(status: r);
      emit(HomeLoadAccountSuccess(driverInfo: currentInfo));
    });
  }

  @override
  Future<void> close() {
    socketSubscription?.cancel();
    return super.close();
  }
}
