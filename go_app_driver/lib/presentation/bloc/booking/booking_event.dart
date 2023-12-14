part of 'booking_bloc.dart';

@freezed
class BookingEvent with _$BookingEvent{
  const factory BookingEvent.loadInfo({required int bookingId}) = BookingLoadInfo;
  const factory BookingEvent.sendBookingStatus() = BookingSendBookingStatus;
  const factory BookingEvent.changeBookingStatus({required BookingStatus bookingStatus}) = BookingChangeBookingStatus;
}