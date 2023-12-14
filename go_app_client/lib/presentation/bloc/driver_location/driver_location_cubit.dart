import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/presentation/bloc/socket/socket_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

part 'driver_location_state.dart';

@lazySingleton
class DriverLocationCubit extends Cubit<DriverLocationState> {
  final SocketBloc socketBloc;
  StreamSubscription? socketSubscription;
  DriverLocationCubit(this.socketBloc) : super(DriverLocationInitial()) {
    socketSubscription = socketBloc.stream.listen((socketState) {
      socketState.whenOrNull(receivedDriverLocation: (location) {
        emit(DriverLocationUpdated(location: location, state: state));
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
