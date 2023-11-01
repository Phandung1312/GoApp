part of 'booking_bloc.dart';


@freezed
class BookingEvent with _$BookingEvent{
  const factory BookingEvent.selectVehicleType() = BookingSelectVehicleType;
  const factory BookingEvent.selectPickupLocation() = BookingSelectPickupLocation;
  const factory BookingEvent.selectDesLocation() = BookingSelectDesLocation;
  const factory BookingEvent.locateOnMap({required SelectLocation selectLocation}) = BookingLocateOnMap;
  const factory BookingEvent.searchAddressFromText({required String query}) = BookingSearchAddressFromText;
  const factory BookingEvent.searchAddressFromCoordinate({required LatLng coordinate}) = BookingSearchAddressFromCoordinate;
  const factory BookingEvent.pickAddress({required MapPickerData mapPickerData}) = BookingPickAddress;
}

