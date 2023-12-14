part of 'home_cubit.dart';



class HomeState {
  final DriverInfo driverInfo;
  
  HomeState(this.driverInfo);
}

class HomeInitial extends HomeState{
   HomeInitial() : super(const DriverInfo());
}

class HomeReceivedBooking extends HomeState{
  final int bookingId;
  HomeReceivedBooking({required DriverInfo driverInfo, required this.bookingId}) : super(driverInfo);
}


class HomeLoadAccountSuccess extends HomeState{
  HomeLoadAccountSuccess({required DriverInfo driverInfo}) : super(driverInfo);
}