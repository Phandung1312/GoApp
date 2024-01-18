part of 'booking_bloc.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.selectPickupLocation() =
      BookingSelectPickupLocation;
  const factory BookingEvent.selectDesLocation() = BookingSelectDesLocation;
  const factory BookingEvent.locateOnMap(
      {required SelectLocation selectLocation,
      String? refId}) = BookingLocateOnMap;
  const factory BookingEvent.searchAddressFromText({required String query}) =
      BookingSearchAddressFromText;
  const factory BookingEvent.searchAddressFromCoordinate(
      {required LatLng coordinate}) = BookingSearchAddressFromCoordinate;
  const factory BookingEvent.pickAddress(
      {required MapPickerData mapPickerData}) = BookingPickAddress;
  const factory BookingEvent.getAddressDetail(
      {required MapAutoComplete model}) = BookingGetAddressDetail;
  const factory BookingEvent.selectVehicleType({required VehicleType vehicleType}) = BookingSelectVehicleType;
  const factory BookingEvent.updateRouteParams(
      {LatLng? pickupPoint,
      LatLng? destinationPoint,
      String? pickupDescription,
      String? destinationDesciption}) = BookingUpdateRouteParams;

  const factory BookingEvent.getDirection({required LatLng from , required LatLng to}) = BookingGetDirection;
  const factory BookingEvent.changeRouteByVehicle({required VehicleType vehicleType}) = BookingChangeRouteByVehicle;
  const factory BookingEvent.createOrder({required VehicleType vehicleType}) = BookingCreateOrder;
  const factory BookingEvent.goToPayment() = BookingGoToPayment;
  const factory BookingEvent.pay() = BookingPay;

  const factory BookingEvent.loadDriverInfo({required int driverId}) = BookingLoadDriverInfo;
  const factory BookingEvent.changeStatus({required BookingStatus bookingStatus}) = BookingChangeStatus;
  const factory BookingEvent.loadBookingData({required Booking booking}) = BookingLoadBookingData;

  const factory BookingEvent.changeDriverLocation({required DriverLocation driverLocation}) = BookingChangeDriverLocation;
  const factory BookingEvent.cancel({required BookingCancelRequest request}) = BookingCancel;
  const factory BookingEvent.reset() = BookingReset;
}
