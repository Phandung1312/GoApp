part of 'booking_bloc.dart';


@freezed
class BookingEvent with _$BookingEvent{
  const factory BookingEvent.selectVehicleType() = BookingSelectVehicleType;
  const factory BookingEvent.selectPickupLocation() = BookingSelectPickupLocation;
  const factory BookingEvent.selectDesLocation() = BookingSelectDesLocation;
  const factory BookingEvent.locateOnMap({required SelectLocation selectLocation}) = BookingLocateOnMap;
}

