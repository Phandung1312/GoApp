
part of 'socket_bloc.dart';

@freezed
class SocketState with _$SocketState{
  const factory SocketState.initial() = SocketInitial;
  const factory SocketState.receivedBookingStatus({required BookingStatusModel bookingStatus}) = SocketReceivedBookingStatus;
  const factory SocketState.receivedBooking({required int bookingId}) = SocketReceivedBooking;
  const factory SocketState.receivedMessage({required Message message}) = SocketReceivedMessage;
}