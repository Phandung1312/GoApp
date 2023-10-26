part of 'home_bloc.dart';


@freezed
 class HomeEvent with _$HomeEvent {
  const factory HomeEvent.startBooking() = HomeStartBooking;
  const factory HomeEvent.selectVehicleType({required VehicleType vehicleType}) = HomeSelectVehicleType;
}




