part of 'socket_bloc.dart';

@freezed
class SocketEvent with _$SocketEvent{
  const factory SocketEvent.connect() = _SocketConnect;
  const factory SocketEvent.listenMessage() = _SocketListenMessage;
  const factory SocketEvent.listenBooking() = _SocketListenBooking;
}