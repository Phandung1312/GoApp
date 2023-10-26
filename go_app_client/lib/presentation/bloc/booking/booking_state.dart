part of 'booking_bloc.dart';

@freezed 
class BookingState with _$BookingState{
  const factory BookingState.initial() = _BookingInitial;
  const factory BookingState.showAddressSheet() = _BookingShowAddressSheet;
  const factory BookingState.locatingPickupLocation() = _BookingLocatingPickupLocation;
  const factory BookingState.locatingDesLocation() = _BookingLocatingDesLocation;
}