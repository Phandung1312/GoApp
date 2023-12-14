part of 'socket_bloc.dart';

@freezed
class SocketEvent with _$SocketEvent{
  const factory SocketEvent.connect() = _SocketConnect;
  const factory SocketEvent.listenMessage() = _SocketListenMessage;
  const factory SocketEvent.listenBooking() = _SocketListenBooking;
  const factory SocketEvent.sendBookingStatus({required BookingStatus status}) = SocketSendBookingStatus;
  const factory SocketEvent.broadCastDriverInfo({required int driverId}) = SocketBroadCastDriverInfo;
  const factory SocketEvent.broadCastDriverLocation({required LatLng location}) = SocketBroadCastDriverLocation;
  const factory SocketEvent.broadCastMessage(Message message) = _SocketBroadCastMessage;


 }