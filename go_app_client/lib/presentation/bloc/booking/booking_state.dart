part of 'booking_bloc.dart';

@freezed 
class BookingState with _$BookingState{
  const factory BookingState.initial() = _BookingInitial;
  const factory BookingState.showAddressSheet() = _BookingShowAddressSheet;
  const factory BookingState.locatingPickupLocation() = _BookingLocatingPickupLocation;
  const factory BookingState.locatingDesLocation() = _BookingLocatingDesLocation;
  const factory BookingState.loadingLocations() = _BookingLoadingLocations;
  const factory BookingState.loadingLocation() = _BoookingLoadingLocation;
  const factory BookingState.loadLocationsSuccess({required List<MapAutoComplete> result}) = _BookingLoadLocationsSuccess;
  const factory BookingState.loadLocationSuccess({required MapReverse result}) = _BookingLoadLocationSuccess;
  const factory BookingState.loadError({required Failure failure}) = _BookingLoadError;
}