part of 'socket_bloc.dart';

@freezed
class SocketState with _$SocketState{
  const factory SocketState.initial() = SocketInitial;
  const factory SocketState.receivedMessage() = SocketReceivedMessage;
  const factory SocketState.receivedDriverLocation() = SocketReceivedDriverLocation;
  const factory SocketState.receivedDriverId() = SocketReceivedDriverId;
  const factory SocketState.receivedBookingId() = SocketReceivedBookingId;
  const factory SocketState.receivedBookingStatus() = SocketReceivedBookingStatus;
}