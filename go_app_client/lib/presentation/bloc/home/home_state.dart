part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _HomeInitial;
  const factory HomeState.showVehicleType() = _HomeShowVehicleType;
  const factory HomeState.goToPickLocation() =_HomeGoToPickLocation;
}


