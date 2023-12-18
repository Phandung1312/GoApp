import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/domain/entities/booking.dart';
import 'package:go_app_client/domain/usecases/booking/get_active_booking_usecase.dart';

import 'package:go_app_client/presentation/bloc/socket/socket_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final SocketBloc socketBloc;
  StreamSubscription? socketSubscription;
  final GetActiveBookingUseCase _getActiveBookingUseCase;
  HomeCubit(this.socketBloc, this._getActiveBookingUseCase)
      : super(const HomeState.initial()) {
    socketBloc.add(const SocketEvent.connect());
    socketSubscription = socketBloc.stream.listen((event) {});
  
  }
  void onCheckBooking() async {
    var either = await _getActiveBookingUseCase();
    either.fold((l) {
      Logger().e("Error when check booking");
    }, (r) {
      emit(HomeState.bookingExists(booking: r));
    });
  }
  void reset(){
    emit(const HomeState.initial());
  }
  @override
  Future<void> close() {
    socketSubscription?.cancel();
    return super.close();
  }
}
