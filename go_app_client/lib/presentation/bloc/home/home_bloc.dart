

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    on<HomeStartBooking>((event, emit) {
      emit(const HomeState.showVehicleType());
    });
  on<HomeSelectVehicleType>((event,emit){
    emit(const HomeState.goToPickLocation());
  });
    
  }
}
