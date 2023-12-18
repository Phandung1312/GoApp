import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/domain/entities/driver_location.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/presentation/bloc/socket/socket_bloc.dart';
import 'package:injectable/injectable.dart';

part 'driver_location_state.dart';

@lazySingleton
class DriverLocationCubit extends Cubit<DriverLocationState> {
  final SocketBloc socketBloc;
  StreamSubscription? socketSubscription;
  DriverLocationCubit(this.socketBloc) : super(DriverLocationInitial()) {
    socketSubscription = socketBloc.stream.listen((socketState) {
      socketState.whenOrNull(receivedDriverLocation: (driverLocation) {
        emit(DriverLocationUpdated(driverLocation: driverLocation, state: state));
      });
    });
  }

  void onUpdateVehicleType(VehicleType vehicleType) {
    emit(DriverLocationUpdatedVehicleType(vehicleType: vehicleType));
  }

  @override
  Future<void> close() {
    socketSubscription?.cancel();
    return super.close();
  }
}
