part of 'socket_bloc.dart';

@freezed
class SocketState with _$SocketState{
  const factory SocketState.initial() = SocketInitial;
   const factory SocketState.receivedMessage({required Message message}) = SocketReceivedMessage;
  const factory SocketState.receivedDriverLocation({required LatLng latLng}) = SocketReceivedDriverLocation;
  const factory SocketState.receivedBookingStatus({required BookingStatus bookingStatus}) = SocketReceivedBookingStatus;
  const factory SocketState.receivedDriverInfo({required int driverId}) = SocketReceivedDriverInfo;
}




