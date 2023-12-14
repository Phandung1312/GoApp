import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_driver/data/models/booking/driver_status_model.dart';
import 'package:go_app_driver/domain/entities/driver_info.dart';
import 'package:go_app_driver/domain/usecases/account/get_account_usecase.dart';
import 'package:go_app_driver/domain/usecases/booking/change_driver_status_usecase.dart';
import 'package:go_app_driver/domain/usecases/booking/get_active_booking_usecase.dart';
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
      socketState.whenOrNull(
          receivedBookingStatus: (data) {},
          receivedBooking: (bookingId) {
            emit(HomeReceivedBooking(
                driverInfo: state.driverInfo, bookingId: bookingId));
          });
    });
    _onLoadAccount();
    _onLoadActiveBooking();
  }

  void _onLoadAccount() async {
    var either = await _getAccountUseCase();
    either.fold((l) => null, (r) {
      emit(HomeLoadAccountSuccess(driverInfo: r));
    });
  }

  void _onLoadActiveBooking() async {
    var either = await _getActiveBookingUseCase();
    either.fold((l) => null, (r) {
      if (r.id != 0) {
        // Logger().i("emit received");
        emit(HomeReceivedBooking(driverInfo: state.driverInfo, bookingId: r.id));
      }
    });
  }

  void onChangeDriverStatus(DriverStatusModel driverStatusModel) async {
    var either = await _changeDriverStatusUseCase(driverStatusModel);
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
