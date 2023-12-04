import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';

import 'package:go_app_client/presentation/bloc/socket/socket_bloc.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final SocketBloc socketBloc;
  StreamSubscription? socketSubscription;
  HomeBloc({required this.socketBloc}) : super(const HomeState.initial()) {
    socketBloc.add(const SocketEvent.connect());
    socketSubscription = socketBloc.stream.listen((event) {
      
    });
    on<HomeStartBooking>((event, emit) {
      emit(const HomeState.showVehicleType());
    });
    on<HomeSelectVehicleType>((event, emit) {
      emit(const HomeState.goToPickLocation());
    });
  }

  @override
  Future<void> close() {
    socketSubscription?.cancel();
    return super.close();
  }
}
