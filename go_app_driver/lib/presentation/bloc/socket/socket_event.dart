

part of 'socket_bloc.dart';

@freezed
class SocketEvent with _$SocketEvent{
  const factory SocketEvent.connect() = _SocketConnect;
  const factory SocketEvent.broadCastBookingStatus({required BookingStatusModel bookingStatusModel}) = _SocketBroadCastBookingStatus;
  const factory SocketEvent.notifyHaveBooking({required int bookingId}) = _SocketNotifyHaveBooking;
  const factory SocketEvent.sendLocation() = _SocketBroadCastSendLocation;
  const factory SocketEvent.broadCastMessage(Message message) = _SocketBroadCastMessage;
}