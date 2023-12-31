part of 'driver_location_cubit.dart';

class DriverLocationState{
  VehicleType? vehicleType;
   DriverLocationState({this.vehicleType});
}

class DriverLocationInitial extends DriverLocationState{
  DriverLocationInitial() : super(vehicleType: VehicleType.motorcycle);
}
class DriverLocationUpdatedVehicleType extends DriverLocationState{
  DriverLocationUpdatedVehicleType({required VehicleType vehicleType}) : super(vehicleType: vehicleType);
}
class DriverLocationUpdated extends DriverLocationState{
  DriverLocation driverLocation;
  DriverLocationUpdated({required this.driverLocation, required DriverLocationState state}) : super(vehicleType: state.vehicleType) ;
}