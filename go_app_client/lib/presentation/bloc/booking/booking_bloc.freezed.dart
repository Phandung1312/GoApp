// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEventCopyWith<$Res> {
  factory $BookingEventCopyWith(
          BookingEvent value, $Res Function(BookingEvent) then) =
      _$BookingEventCopyWithImpl<$Res, BookingEvent>;
}

/// @nodoc
class _$BookingEventCopyWithImpl<$Res, $Val extends BookingEvent>
    implements $BookingEventCopyWith<$Res> {
  _$BookingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BookingSelectPickupLocationImplCopyWith<$Res> {
  factory _$$BookingSelectPickupLocationImplCopyWith(
          _$BookingSelectPickupLocationImpl value,
          $Res Function(_$BookingSelectPickupLocationImpl) then) =
      __$$BookingSelectPickupLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingSelectPickupLocationImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingSelectPickupLocationImpl>
    implements _$$BookingSelectPickupLocationImplCopyWith<$Res> {
  __$$BookingSelectPickupLocationImplCopyWithImpl(
      _$BookingSelectPickupLocationImpl _value,
      $Res Function(_$BookingSelectPickupLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingSelectPickupLocationImpl implements BookingSelectPickupLocation {
  const _$BookingSelectPickupLocationImpl();

  @override
  String toString() {
    return 'BookingEvent.selectPickupLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingSelectPickupLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return selectPickupLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return selectPickupLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (selectPickupLocation != null) {
      return selectPickupLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return selectPickupLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return selectPickupLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (selectPickupLocation != null) {
      return selectPickupLocation(this);
    }
    return orElse();
  }
}

abstract class BookingSelectPickupLocation implements BookingEvent {
  const factory BookingSelectPickupLocation() =
      _$BookingSelectPickupLocationImpl;
}

/// @nodoc
abstract class _$$BookingSelectDesLocationImplCopyWith<$Res> {
  factory _$$BookingSelectDesLocationImplCopyWith(
          _$BookingSelectDesLocationImpl value,
          $Res Function(_$BookingSelectDesLocationImpl) then) =
      __$$BookingSelectDesLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingSelectDesLocationImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingSelectDesLocationImpl>
    implements _$$BookingSelectDesLocationImplCopyWith<$Res> {
  __$$BookingSelectDesLocationImplCopyWithImpl(
      _$BookingSelectDesLocationImpl _value,
      $Res Function(_$BookingSelectDesLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingSelectDesLocationImpl implements BookingSelectDesLocation {
  const _$BookingSelectDesLocationImpl();

  @override
  String toString() {
    return 'BookingEvent.selectDesLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingSelectDesLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return selectDesLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return selectDesLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (selectDesLocation != null) {
      return selectDesLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return selectDesLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return selectDesLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (selectDesLocation != null) {
      return selectDesLocation(this);
    }
    return orElse();
  }
}

abstract class BookingSelectDesLocation implements BookingEvent {
  const factory BookingSelectDesLocation() = _$BookingSelectDesLocationImpl;
}

/// @nodoc
abstract class _$$BookingLocateOnMapImplCopyWith<$Res> {
  factory _$$BookingLocateOnMapImplCopyWith(_$BookingLocateOnMapImpl value,
          $Res Function(_$BookingLocateOnMapImpl) then) =
      __$$BookingLocateOnMapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SelectLocation selectLocation, String? refId});
}

/// @nodoc
class __$$BookingLocateOnMapImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingLocateOnMapImpl>
    implements _$$BookingLocateOnMapImplCopyWith<$Res> {
  __$$BookingLocateOnMapImplCopyWithImpl(_$BookingLocateOnMapImpl _value,
      $Res Function(_$BookingLocateOnMapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectLocation = null,
    Object? refId = freezed,
  }) {
    return _then(_$BookingLocateOnMapImpl(
      selectLocation: null == selectLocation
          ? _value.selectLocation
          : selectLocation // ignore: cast_nullable_to_non_nullable
              as SelectLocation,
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BookingLocateOnMapImpl implements BookingLocateOnMap {
  const _$BookingLocateOnMapImpl({required this.selectLocation, this.refId});

  @override
  final SelectLocation selectLocation;
  @override
  final String? refId;

  @override
  String toString() {
    return 'BookingEvent.locateOnMap(selectLocation: $selectLocation, refId: $refId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingLocateOnMapImpl &&
            (identical(other.selectLocation, selectLocation) ||
                other.selectLocation == selectLocation) &&
            (identical(other.refId, refId) || other.refId == refId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectLocation, refId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingLocateOnMapImplCopyWith<_$BookingLocateOnMapImpl> get copyWith =>
      __$$BookingLocateOnMapImplCopyWithImpl<_$BookingLocateOnMapImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return locateOnMap(selectLocation, refId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return locateOnMap?.call(selectLocation, refId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (locateOnMap != null) {
      return locateOnMap(selectLocation, refId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return locateOnMap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return locateOnMap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (locateOnMap != null) {
      return locateOnMap(this);
    }
    return orElse();
  }
}

abstract class BookingLocateOnMap implements BookingEvent {
  const factory BookingLocateOnMap(
      {required final SelectLocation selectLocation,
      final String? refId}) = _$BookingLocateOnMapImpl;

  SelectLocation get selectLocation;
  String? get refId;
  @JsonKey(ignore: true)
  _$$BookingLocateOnMapImplCopyWith<_$BookingLocateOnMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingSearchAddressFromTextImplCopyWith<$Res> {
  factory _$$BookingSearchAddressFromTextImplCopyWith(
          _$BookingSearchAddressFromTextImpl value,
          $Res Function(_$BookingSearchAddressFromTextImpl) then) =
      __$$BookingSearchAddressFromTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$BookingSearchAddressFromTextImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingSearchAddressFromTextImpl>
    implements _$$BookingSearchAddressFromTextImplCopyWith<$Res> {
  __$$BookingSearchAddressFromTextImplCopyWithImpl(
      _$BookingSearchAddressFromTextImpl _value,
      $Res Function(_$BookingSearchAddressFromTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$BookingSearchAddressFromTextImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookingSearchAddressFromTextImpl
    implements BookingSearchAddressFromText {
  const _$BookingSearchAddressFromTextImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'BookingEvent.searchAddressFromText(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingSearchAddressFromTextImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingSearchAddressFromTextImplCopyWith<
          _$BookingSearchAddressFromTextImpl>
      get copyWith => __$$BookingSearchAddressFromTextImplCopyWithImpl<
          _$BookingSearchAddressFromTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return searchAddressFromText(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return searchAddressFromText?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (searchAddressFromText != null) {
      return searchAddressFromText(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return searchAddressFromText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return searchAddressFromText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (searchAddressFromText != null) {
      return searchAddressFromText(this);
    }
    return orElse();
  }
}

abstract class BookingSearchAddressFromText implements BookingEvent {
  const factory BookingSearchAddressFromText({required final String query}) =
      _$BookingSearchAddressFromTextImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$BookingSearchAddressFromTextImplCopyWith<
          _$BookingSearchAddressFromTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingSearchAddressFromCoordinateImplCopyWith<$Res> {
  factory _$$BookingSearchAddressFromCoordinateImplCopyWith(
          _$BookingSearchAddressFromCoordinateImpl value,
          $Res Function(_$BookingSearchAddressFromCoordinateImpl) then) =
      __$$BookingSearchAddressFromCoordinateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng coordinate});
}

/// @nodoc
class __$$BookingSearchAddressFromCoordinateImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res,
        _$BookingSearchAddressFromCoordinateImpl>
    implements _$$BookingSearchAddressFromCoordinateImplCopyWith<$Res> {
  __$$BookingSearchAddressFromCoordinateImplCopyWithImpl(
      _$BookingSearchAddressFromCoordinateImpl _value,
      $Res Function(_$BookingSearchAddressFromCoordinateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinate = null,
  }) {
    return _then(_$BookingSearchAddressFromCoordinateImpl(
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$BookingSearchAddressFromCoordinateImpl
    implements BookingSearchAddressFromCoordinate {
  const _$BookingSearchAddressFromCoordinateImpl({required this.coordinate});

  @override
  final LatLng coordinate;

  @override
  String toString() {
    return 'BookingEvent.searchAddressFromCoordinate(coordinate: $coordinate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingSearchAddressFromCoordinateImpl &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coordinate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingSearchAddressFromCoordinateImplCopyWith<
          _$BookingSearchAddressFromCoordinateImpl>
      get copyWith => __$$BookingSearchAddressFromCoordinateImplCopyWithImpl<
          _$BookingSearchAddressFromCoordinateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return searchAddressFromCoordinate(coordinate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return searchAddressFromCoordinate?.call(coordinate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (searchAddressFromCoordinate != null) {
      return searchAddressFromCoordinate(coordinate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return searchAddressFromCoordinate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return searchAddressFromCoordinate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (searchAddressFromCoordinate != null) {
      return searchAddressFromCoordinate(this);
    }
    return orElse();
  }
}

abstract class BookingSearchAddressFromCoordinate implements BookingEvent {
  const factory BookingSearchAddressFromCoordinate(
          {required final LatLng coordinate}) =
      _$BookingSearchAddressFromCoordinateImpl;

  LatLng get coordinate;
  @JsonKey(ignore: true)
  _$$BookingSearchAddressFromCoordinateImplCopyWith<
          _$BookingSearchAddressFromCoordinateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingPickAddressImplCopyWith<$Res> {
  factory _$$BookingPickAddressImplCopyWith(_$BookingPickAddressImpl value,
          $Res Function(_$BookingPickAddressImpl) then) =
      __$$BookingPickAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MapPickerData mapPickerData});

  $MapPickerDataCopyWith<$Res> get mapPickerData;
}

/// @nodoc
class __$$BookingPickAddressImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingPickAddressImpl>
    implements _$$BookingPickAddressImplCopyWith<$Res> {
  __$$BookingPickAddressImplCopyWithImpl(_$BookingPickAddressImpl _value,
      $Res Function(_$BookingPickAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapPickerData = null,
  }) {
    return _then(_$BookingPickAddressImpl(
      mapPickerData: null == mapPickerData
          ? _value.mapPickerData
          : mapPickerData // ignore: cast_nullable_to_non_nullable
              as MapPickerData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MapPickerDataCopyWith<$Res> get mapPickerData {
    return $MapPickerDataCopyWith<$Res>(_value.mapPickerData, (value) {
      return _then(_value.copyWith(mapPickerData: value));
    });
  }
}

/// @nodoc

class _$BookingPickAddressImpl implements BookingPickAddress {
  const _$BookingPickAddressImpl({required this.mapPickerData});

  @override
  final MapPickerData mapPickerData;

  @override
  String toString() {
    return 'BookingEvent.pickAddress(mapPickerData: $mapPickerData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingPickAddressImpl &&
            (identical(other.mapPickerData, mapPickerData) ||
                other.mapPickerData == mapPickerData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mapPickerData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingPickAddressImplCopyWith<_$BookingPickAddressImpl> get copyWith =>
      __$$BookingPickAddressImplCopyWithImpl<_$BookingPickAddressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return pickAddress(mapPickerData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return pickAddress?.call(mapPickerData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (pickAddress != null) {
      return pickAddress(mapPickerData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return pickAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return pickAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (pickAddress != null) {
      return pickAddress(this);
    }
    return orElse();
  }
}

abstract class BookingPickAddress implements BookingEvent {
  const factory BookingPickAddress(
      {required final MapPickerData mapPickerData}) = _$BookingPickAddressImpl;

  MapPickerData get mapPickerData;
  @JsonKey(ignore: true)
  _$$BookingPickAddressImplCopyWith<_$BookingPickAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingGetAddressDetailImplCopyWith<$Res> {
  factory _$$BookingGetAddressDetailImplCopyWith(
          _$BookingGetAddressDetailImpl value,
          $Res Function(_$BookingGetAddressDetailImpl) then) =
      __$$BookingGetAddressDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MapAutoComplete model});

  $MapAutoCompleteCopyWith<$Res> get model;
}

/// @nodoc
class __$$BookingGetAddressDetailImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingGetAddressDetailImpl>
    implements _$$BookingGetAddressDetailImplCopyWith<$Res> {
  __$$BookingGetAddressDetailImplCopyWithImpl(
      _$BookingGetAddressDetailImpl _value,
      $Res Function(_$BookingGetAddressDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$BookingGetAddressDetailImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as MapAutoComplete,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MapAutoCompleteCopyWith<$Res> get model {
    return $MapAutoCompleteCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$BookingGetAddressDetailImpl implements BookingGetAddressDetail {
  const _$BookingGetAddressDetailImpl({required this.model});

  @override
  final MapAutoComplete model;

  @override
  String toString() {
    return 'BookingEvent.getAddressDetail(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingGetAddressDetailImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingGetAddressDetailImplCopyWith<_$BookingGetAddressDetailImpl>
      get copyWith => __$$BookingGetAddressDetailImplCopyWithImpl<
          _$BookingGetAddressDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return getAddressDetail(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return getAddressDetail?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (getAddressDetail != null) {
      return getAddressDetail(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return getAddressDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return getAddressDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (getAddressDetail != null) {
      return getAddressDetail(this);
    }
    return orElse();
  }
}

abstract class BookingGetAddressDetail implements BookingEvent {
  const factory BookingGetAddressDetail(
      {required final MapAutoComplete model}) = _$BookingGetAddressDetailImpl;

  MapAutoComplete get model;
  @JsonKey(ignore: true)
  _$$BookingGetAddressDetailImplCopyWith<_$BookingGetAddressDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingSelectVehicleTypeImplCopyWith<$Res> {
  factory _$$BookingSelectVehicleTypeImplCopyWith(
          _$BookingSelectVehicleTypeImpl value,
          $Res Function(_$BookingSelectVehicleTypeImpl) then) =
      __$$BookingSelectVehicleTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VehicleType vehicleType});
}

/// @nodoc
class __$$BookingSelectVehicleTypeImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingSelectVehicleTypeImpl>
    implements _$$BookingSelectVehicleTypeImplCopyWith<$Res> {
  __$$BookingSelectVehicleTypeImplCopyWithImpl(
      _$BookingSelectVehicleTypeImpl _value,
      $Res Function(_$BookingSelectVehicleTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleType = null,
  }) {
    return _then(_$BookingSelectVehicleTypeImpl(
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType,
    ));
  }
}

/// @nodoc

class _$BookingSelectVehicleTypeImpl implements BookingSelectVehicleType {
  const _$BookingSelectVehicleTypeImpl({required this.vehicleType});

  @override
  final VehicleType vehicleType;

  @override
  String toString() {
    return 'BookingEvent.selectVehicleType(vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingSelectVehicleTypeImpl &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicleType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingSelectVehicleTypeImplCopyWith<_$BookingSelectVehicleTypeImpl>
      get copyWith => __$$BookingSelectVehicleTypeImplCopyWithImpl<
          _$BookingSelectVehicleTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return selectVehicleType(vehicleType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return selectVehicleType?.call(vehicleType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (selectVehicleType != null) {
      return selectVehicleType(vehicleType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return selectVehicleType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return selectVehicleType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (selectVehicleType != null) {
      return selectVehicleType(this);
    }
    return orElse();
  }
}

abstract class BookingSelectVehicleType implements BookingEvent {
  const factory BookingSelectVehicleType(
          {required final VehicleType vehicleType}) =
      _$BookingSelectVehicleTypeImpl;

  VehicleType get vehicleType;
  @JsonKey(ignore: true)
  _$$BookingSelectVehicleTypeImplCopyWith<_$BookingSelectVehicleTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingUpdateRouteParamsImplCopyWith<$Res> {
  factory _$$BookingUpdateRouteParamsImplCopyWith(
          _$BookingUpdateRouteParamsImpl value,
          $Res Function(_$BookingUpdateRouteParamsImpl) then) =
      __$$BookingUpdateRouteParamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {LatLng? pickupPoint,
      LatLng? destinationPoint,
      String? pickupDescription,
      String? destinationDesciption});
}

/// @nodoc
class __$$BookingUpdateRouteParamsImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingUpdateRouteParamsImpl>
    implements _$$BookingUpdateRouteParamsImplCopyWith<$Res> {
  __$$BookingUpdateRouteParamsImplCopyWithImpl(
      _$BookingUpdateRouteParamsImpl _value,
      $Res Function(_$BookingUpdateRouteParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupPoint = freezed,
    Object? destinationPoint = freezed,
    Object? pickupDescription = freezed,
    Object? destinationDesciption = freezed,
  }) {
    return _then(_$BookingUpdateRouteParamsImpl(
      pickupPoint: freezed == pickupPoint
          ? _value.pickupPoint
          : pickupPoint // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      destinationPoint: freezed == destinationPoint
          ? _value.destinationPoint
          : destinationPoint // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      pickupDescription: freezed == pickupDescription
          ? _value.pickupDescription
          : pickupDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationDesciption: freezed == destinationDesciption
          ? _value.destinationDesciption
          : destinationDesciption // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BookingUpdateRouteParamsImpl implements BookingUpdateRouteParams {
  const _$BookingUpdateRouteParamsImpl(
      {this.pickupPoint,
      this.destinationPoint,
      this.pickupDescription,
      this.destinationDesciption});

  @override
  final LatLng? pickupPoint;
  @override
  final LatLng? destinationPoint;
  @override
  final String? pickupDescription;
  @override
  final String? destinationDesciption;

  @override
  String toString() {
    return 'BookingEvent.updateRouteParams(pickupPoint: $pickupPoint, destinationPoint: $destinationPoint, pickupDescription: $pickupDescription, destinationDesciption: $destinationDesciption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingUpdateRouteParamsImpl &&
            (identical(other.pickupPoint, pickupPoint) ||
                other.pickupPoint == pickupPoint) &&
            (identical(other.destinationPoint, destinationPoint) ||
                other.destinationPoint == destinationPoint) &&
            (identical(other.pickupDescription, pickupDescription) ||
                other.pickupDescription == pickupDescription) &&
            (identical(other.destinationDesciption, destinationDesciption) ||
                other.destinationDesciption == destinationDesciption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pickupPoint, destinationPoint,
      pickupDescription, destinationDesciption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingUpdateRouteParamsImplCopyWith<_$BookingUpdateRouteParamsImpl>
      get copyWith => __$$BookingUpdateRouteParamsImplCopyWithImpl<
          _$BookingUpdateRouteParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return updateRouteParams(pickupPoint, destinationPoint, pickupDescription,
        destinationDesciption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return updateRouteParams?.call(pickupPoint, destinationPoint,
        pickupDescription, destinationDesciption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (updateRouteParams != null) {
      return updateRouteParams(pickupPoint, destinationPoint, pickupDescription,
          destinationDesciption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return updateRouteParams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return updateRouteParams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (updateRouteParams != null) {
      return updateRouteParams(this);
    }
    return orElse();
  }
}

abstract class BookingUpdateRouteParams implements BookingEvent {
  const factory BookingUpdateRouteParams(
      {final LatLng? pickupPoint,
      final LatLng? destinationPoint,
      final String? pickupDescription,
      final String? destinationDesciption}) = _$BookingUpdateRouteParamsImpl;

  LatLng? get pickupPoint;
  LatLng? get destinationPoint;
  String? get pickupDescription;
  String? get destinationDesciption;
  @JsonKey(ignore: true)
  _$$BookingUpdateRouteParamsImplCopyWith<_$BookingUpdateRouteParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingGetDirectionImplCopyWith<$Res> {
  factory _$$BookingGetDirectionImplCopyWith(_$BookingGetDirectionImpl value,
          $Res Function(_$BookingGetDirectionImpl) then) =
      __$$BookingGetDirectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng from, LatLng to});
}

/// @nodoc
class __$$BookingGetDirectionImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingGetDirectionImpl>
    implements _$$BookingGetDirectionImplCopyWith<$Res> {
  __$$BookingGetDirectionImplCopyWithImpl(_$BookingGetDirectionImpl _value,
      $Res Function(_$BookingGetDirectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$BookingGetDirectionImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as LatLng,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$BookingGetDirectionImpl implements BookingGetDirection {
  const _$BookingGetDirectionImpl({required this.from, required this.to});

  @override
  final LatLng from;
  @override
  final LatLng to;

  @override
  String toString() {
    return 'BookingEvent.getDirection(from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingGetDirectionImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingGetDirectionImplCopyWith<_$BookingGetDirectionImpl> get copyWith =>
      __$$BookingGetDirectionImplCopyWithImpl<_$BookingGetDirectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return getDirection(from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return getDirection?.call(from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (getDirection != null) {
      return getDirection(from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return getDirection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return getDirection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (getDirection != null) {
      return getDirection(this);
    }
    return orElse();
  }
}

abstract class BookingGetDirection implements BookingEvent {
  const factory BookingGetDirection(
      {required final LatLng from,
      required final LatLng to}) = _$BookingGetDirectionImpl;

  LatLng get from;
  LatLng get to;
  @JsonKey(ignore: true)
  _$$BookingGetDirectionImplCopyWith<_$BookingGetDirectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingChangeRouteByVehicleImplCopyWith<$Res> {
  factory _$$BookingChangeRouteByVehicleImplCopyWith(
          _$BookingChangeRouteByVehicleImpl value,
          $Res Function(_$BookingChangeRouteByVehicleImpl) then) =
      __$$BookingChangeRouteByVehicleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VehicleType vehicleType});
}

/// @nodoc
class __$$BookingChangeRouteByVehicleImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingChangeRouteByVehicleImpl>
    implements _$$BookingChangeRouteByVehicleImplCopyWith<$Res> {
  __$$BookingChangeRouteByVehicleImplCopyWithImpl(
      _$BookingChangeRouteByVehicleImpl _value,
      $Res Function(_$BookingChangeRouteByVehicleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleType = null,
  }) {
    return _then(_$BookingChangeRouteByVehicleImpl(
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType,
    ));
  }
}

/// @nodoc

class _$BookingChangeRouteByVehicleImpl implements BookingChangeRouteByVehicle {
  const _$BookingChangeRouteByVehicleImpl({required this.vehicleType});

  @override
  final VehicleType vehicleType;

  @override
  String toString() {
    return 'BookingEvent.changeRouteByVehicle(vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingChangeRouteByVehicleImpl &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicleType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingChangeRouteByVehicleImplCopyWith<_$BookingChangeRouteByVehicleImpl>
      get copyWith => __$$BookingChangeRouteByVehicleImplCopyWithImpl<
          _$BookingChangeRouteByVehicleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return changeRouteByVehicle(vehicleType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return changeRouteByVehicle?.call(vehicleType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (changeRouteByVehicle != null) {
      return changeRouteByVehicle(vehicleType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return changeRouteByVehicle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return changeRouteByVehicle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (changeRouteByVehicle != null) {
      return changeRouteByVehicle(this);
    }
    return orElse();
  }
}

abstract class BookingChangeRouteByVehicle implements BookingEvent {
  const factory BookingChangeRouteByVehicle(
          {required final VehicleType vehicleType}) =
      _$BookingChangeRouteByVehicleImpl;

  VehicleType get vehicleType;
  @JsonKey(ignore: true)
  _$$BookingChangeRouteByVehicleImplCopyWith<_$BookingChangeRouteByVehicleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingCreateOrderImplCopyWith<$Res> {
  factory _$$BookingCreateOrderImplCopyWith(_$BookingCreateOrderImpl value,
          $Res Function(_$BookingCreateOrderImpl) then) =
      __$$BookingCreateOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VehicleType vehicleType});
}

/// @nodoc
class __$$BookingCreateOrderImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingCreateOrderImpl>
    implements _$$BookingCreateOrderImplCopyWith<$Res> {
  __$$BookingCreateOrderImplCopyWithImpl(_$BookingCreateOrderImpl _value,
      $Res Function(_$BookingCreateOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleType = null,
  }) {
    return _then(_$BookingCreateOrderImpl(
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType,
    ));
  }
}

/// @nodoc

class _$BookingCreateOrderImpl implements BookingCreateOrder {
  const _$BookingCreateOrderImpl({required this.vehicleType});

  @override
  final VehicleType vehicleType;

  @override
  String toString() {
    return 'BookingEvent.createOrder(vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingCreateOrderImpl &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicleType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingCreateOrderImplCopyWith<_$BookingCreateOrderImpl> get copyWith =>
      __$$BookingCreateOrderImplCopyWithImpl<_$BookingCreateOrderImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return createOrder(vehicleType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return createOrder?.call(vehicleType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(vehicleType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class BookingCreateOrder implements BookingEvent {
  const factory BookingCreateOrder({required final VehicleType vehicleType}) =
      _$BookingCreateOrderImpl;

  VehicleType get vehicleType;
  @JsonKey(ignore: true)
  _$$BookingCreateOrderImplCopyWith<_$BookingCreateOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingGoToPaymentImplCopyWith<$Res> {
  factory _$$BookingGoToPaymentImplCopyWith(_$BookingGoToPaymentImpl value,
          $Res Function(_$BookingGoToPaymentImpl) then) =
      __$$BookingGoToPaymentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingGoToPaymentImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingGoToPaymentImpl>
    implements _$$BookingGoToPaymentImplCopyWith<$Res> {
  __$$BookingGoToPaymentImplCopyWithImpl(_$BookingGoToPaymentImpl _value,
      $Res Function(_$BookingGoToPaymentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingGoToPaymentImpl implements BookingGoToPayment {
  const _$BookingGoToPaymentImpl();

  @override
  String toString() {
    return 'BookingEvent.goToPayment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookingGoToPaymentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return goToPayment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return goToPayment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (goToPayment != null) {
      return goToPayment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return goToPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return goToPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (goToPayment != null) {
      return goToPayment(this);
    }
    return orElse();
  }
}

abstract class BookingGoToPayment implements BookingEvent {
  const factory BookingGoToPayment() = _$BookingGoToPaymentImpl;
}

/// @nodoc
abstract class _$$BookingPayImplCopyWith<$Res> {
  factory _$$BookingPayImplCopyWith(
          _$BookingPayImpl value, $Res Function(_$BookingPayImpl) then) =
      __$$BookingPayImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingPayImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingPayImpl>
    implements _$$BookingPayImplCopyWith<$Res> {
  __$$BookingPayImplCopyWithImpl(
      _$BookingPayImpl _value, $Res Function(_$BookingPayImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingPayImpl implements BookingPay {
  const _$BookingPayImpl();

  @override
  String toString() {
    return 'BookingEvent.pay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookingPayImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return pay();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return pay?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (pay != null) {
      return pay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return pay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return pay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (pay != null) {
      return pay(this);
    }
    return orElse();
  }
}

abstract class BookingPay implements BookingEvent {
  const factory BookingPay() = _$BookingPayImpl;
}

/// @nodoc
abstract class _$$BookingLoadDriverInfoImplCopyWith<$Res> {
  factory _$$BookingLoadDriverInfoImplCopyWith(
          _$BookingLoadDriverInfoImpl value,
          $Res Function(_$BookingLoadDriverInfoImpl) then) =
      __$$BookingLoadDriverInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int driverId});
}

/// @nodoc
class __$$BookingLoadDriverInfoImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingLoadDriverInfoImpl>
    implements _$$BookingLoadDriverInfoImplCopyWith<$Res> {
  __$$BookingLoadDriverInfoImplCopyWithImpl(_$BookingLoadDriverInfoImpl _value,
      $Res Function(_$BookingLoadDriverInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverId = null,
  }) {
    return _then(_$BookingLoadDriverInfoImpl(
      driverId: null == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BookingLoadDriverInfoImpl implements BookingLoadDriverInfo {
  const _$BookingLoadDriverInfoImpl({required this.driverId});

  @override
  final int driverId;

  @override
  String toString() {
    return 'BookingEvent.loadDriverInfo(driverId: $driverId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingLoadDriverInfoImpl &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driverId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingLoadDriverInfoImplCopyWith<_$BookingLoadDriverInfoImpl>
      get copyWith => __$$BookingLoadDriverInfoImplCopyWithImpl<
          _$BookingLoadDriverInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return loadDriverInfo(driverId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return loadDriverInfo?.call(driverId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (loadDriverInfo != null) {
      return loadDriverInfo(driverId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return loadDriverInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return loadDriverInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (loadDriverInfo != null) {
      return loadDriverInfo(this);
    }
    return orElse();
  }
}

abstract class BookingLoadDriverInfo implements BookingEvent {
  const factory BookingLoadDriverInfo({required final int driverId}) =
      _$BookingLoadDriverInfoImpl;

  int get driverId;
  @JsonKey(ignore: true)
  _$$BookingLoadDriverInfoImplCopyWith<_$BookingLoadDriverInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingChangeStatusImplCopyWith<$Res> {
  factory _$$BookingChangeStatusImplCopyWith(_$BookingChangeStatusImpl value,
          $Res Function(_$BookingChangeStatusImpl) then) =
      __$$BookingChangeStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BookingStatus bookingStatus});
}

/// @nodoc
class __$$BookingChangeStatusImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingChangeStatusImpl>
    implements _$$BookingChangeStatusImplCopyWith<$Res> {
  __$$BookingChangeStatusImplCopyWithImpl(_$BookingChangeStatusImpl _value,
      $Res Function(_$BookingChangeStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingStatus = null,
  }) {
    return _then(_$BookingChangeStatusImpl(
      bookingStatus: null == bookingStatus
          ? _value.bookingStatus
          : bookingStatus // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
    ));
  }
}

/// @nodoc

class _$BookingChangeStatusImpl implements BookingChangeStatus {
  const _$BookingChangeStatusImpl({required this.bookingStatus});

  @override
  final BookingStatus bookingStatus;

  @override
  String toString() {
    return 'BookingEvent.changeStatus(bookingStatus: $bookingStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingChangeStatusImpl &&
            (identical(other.bookingStatus, bookingStatus) ||
                other.bookingStatus == bookingStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingChangeStatusImplCopyWith<_$BookingChangeStatusImpl> get copyWith =>
      __$$BookingChangeStatusImplCopyWithImpl<_$BookingChangeStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return changeStatus(bookingStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return changeStatus?.call(bookingStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (changeStatus != null) {
      return changeStatus(bookingStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return changeStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return changeStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (changeStatus != null) {
      return changeStatus(this);
    }
    return orElse();
  }
}

abstract class BookingChangeStatus implements BookingEvent {
  const factory BookingChangeStatus(
      {required final BookingStatus bookingStatus}) = _$BookingChangeStatusImpl;

  BookingStatus get bookingStatus;
  @JsonKey(ignore: true)
  _$$BookingChangeStatusImplCopyWith<_$BookingChangeStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingLoadBookingDataImplCopyWith<$Res> {
  factory _$$BookingLoadBookingDataImplCopyWith(
          _$BookingLoadBookingDataImpl value,
          $Res Function(_$BookingLoadBookingDataImpl) then) =
      __$$BookingLoadBookingDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Booking booking});

  $BookingCopyWith<$Res> get booking;
}

/// @nodoc
class __$$BookingLoadBookingDataImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingLoadBookingDataImpl>
    implements _$$BookingLoadBookingDataImplCopyWith<$Res> {
  __$$BookingLoadBookingDataImplCopyWithImpl(
      _$BookingLoadBookingDataImpl _value,
      $Res Function(_$BookingLoadBookingDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booking = null,
  }) {
    return _then(_$BookingLoadBookingDataImpl(
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingCopyWith<$Res> get booking {
    return $BookingCopyWith<$Res>(_value.booking, (value) {
      return _then(_value.copyWith(booking: value));
    });
  }
}

/// @nodoc

class _$BookingLoadBookingDataImpl implements BookingLoadBookingData {
  const _$BookingLoadBookingDataImpl({required this.booking});

  @override
  final Booking booking;

  @override
  String toString() {
    return 'BookingEvent.loadBookingData(booking: $booking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingLoadBookingDataImpl &&
            (identical(other.booking, booking) || other.booking == booking));
  }

  @override
  int get hashCode => Object.hash(runtimeType, booking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingLoadBookingDataImplCopyWith<_$BookingLoadBookingDataImpl>
      get copyWith => __$$BookingLoadBookingDataImplCopyWithImpl<
          _$BookingLoadBookingDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return loadBookingData(booking);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return loadBookingData?.call(booking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (loadBookingData != null) {
      return loadBookingData(booking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return loadBookingData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return loadBookingData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (loadBookingData != null) {
      return loadBookingData(this);
    }
    return orElse();
  }
}

abstract class BookingLoadBookingData implements BookingEvent {
  const factory BookingLoadBookingData({required final Booking booking}) =
      _$BookingLoadBookingDataImpl;

  Booking get booking;
  @JsonKey(ignore: true)
  _$$BookingLoadBookingDataImplCopyWith<_$BookingLoadBookingDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingChangeDriverLocationImplCopyWith<$Res> {
  factory _$$BookingChangeDriverLocationImplCopyWith(
          _$BookingChangeDriverLocationImpl value,
          $Res Function(_$BookingChangeDriverLocationImpl) then) =
      __$$BookingChangeDriverLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DriverLocation driverLocation});

  $DriverLocationCopyWith<$Res> get driverLocation;
}

/// @nodoc
class __$$BookingChangeDriverLocationImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingChangeDriverLocationImpl>
    implements _$$BookingChangeDriverLocationImplCopyWith<$Res> {
  __$$BookingChangeDriverLocationImplCopyWithImpl(
      _$BookingChangeDriverLocationImpl _value,
      $Res Function(_$BookingChangeDriverLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverLocation = null,
  }) {
    return _then(_$BookingChangeDriverLocationImpl(
      driverLocation: null == driverLocation
          ? _value.driverLocation
          : driverLocation // ignore: cast_nullable_to_non_nullable
              as DriverLocation,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverLocationCopyWith<$Res> get driverLocation {
    return $DriverLocationCopyWith<$Res>(_value.driverLocation, (value) {
      return _then(_value.copyWith(driverLocation: value));
    });
  }
}

/// @nodoc

class _$BookingChangeDriverLocationImpl implements BookingChangeDriverLocation {
  const _$BookingChangeDriverLocationImpl({required this.driverLocation});

  @override
  final DriverLocation driverLocation;

  @override
  String toString() {
    return 'BookingEvent.changeDriverLocation(driverLocation: $driverLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingChangeDriverLocationImpl &&
            (identical(other.driverLocation, driverLocation) ||
                other.driverLocation == driverLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driverLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingChangeDriverLocationImplCopyWith<_$BookingChangeDriverLocationImpl>
      get copyWith => __$$BookingChangeDriverLocationImplCopyWithImpl<
          _$BookingChangeDriverLocationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return changeDriverLocation(driverLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return changeDriverLocation?.call(driverLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (changeDriverLocation != null) {
      return changeDriverLocation(driverLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return changeDriverLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return changeDriverLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (changeDriverLocation != null) {
      return changeDriverLocation(this);
    }
    return orElse();
  }
}

abstract class BookingChangeDriverLocation implements BookingEvent {
  const factory BookingChangeDriverLocation(
          {required final DriverLocation driverLocation}) =
      _$BookingChangeDriverLocationImpl;

  DriverLocation get driverLocation;
  @JsonKey(ignore: true)
  _$$BookingChangeDriverLocationImplCopyWith<_$BookingChangeDriverLocationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingCancelImplCopyWith<$Res> {
  factory _$$BookingCancelImplCopyWith(
          _$BookingCancelImpl value, $Res Function(_$BookingCancelImpl) then) =
      __$$BookingCancelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BookingCancelRequest request});

  $BookingCancelRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$BookingCancelImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingCancelImpl>
    implements _$$BookingCancelImplCopyWith<$Res> {
  __$$BookingCancelImplCopyWithImpl(
      _$BookingCancelImpl _value, $Res Function(_$BookingCancelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$BookingCancelImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as BookingCancelRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingCancelRequestCopyWith<$Res> get request {
    return $BookingCancelRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$BookingCancelImpl implements BookingCancel {
  const _$BookingCancelImpl({required this.request});

  @override
  final BookingCancelRequest request;

  @override
  String toString() {
    return 'BookingEvent.cancel(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingCancelImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingCancelImplCopyWith<_$BookingCancelImpl> get copyWith =>
      __$$BookingCancelImplCopyWithImpl<_$BookingCancelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return cancel(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return cancel?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class BookingCancel implements BookingEvent {
  const factory BookingCancel({required final BookingCancelRequest request}) =
      _$BookingCancelImpl;

  BookingCancelRequest get request;
  @JsonKey(ignore: true)
  _$$BookingCancelImplCopyWith<_$BookingCancelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingResetImplCopyWith<$Res> {
  factory _$$BookingResetImplCopyWith(
          _$BookingResetImpl value, $Res Function(_$BookingResetImpl) then) =
      __$$BookingResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingResetImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingResetImpl>
    implements _$$BookingResetImplCopyWith<$Res> {
  __$$BookingResetImplCopyWithImpl(
      _$BookingResetImpl _value, $Res Function(_$BookingResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingResetImpl implements BookingReset {
  const _$BookingResetImpl();

  @override
  String toString() {
    return 'BookingEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookingResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation, String? refId)
        locateOnMap,
    required TResult Function(String query) searchAddressFromText,
    required TResult Function(LatLng coordinate) searchAddressFromCoordinate,
    required TResult Function(MapPickerData mapPickerData) pickAddress,
    required TResult Function(MapAutoComplete model) getAddressDetail,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
    required TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)
        updateRouteParams,
    required TResult Function(LatLng from, LatLng to) getDirection,
    required TResult Function(VehicleType vehicleType) changeRouteByVehicle,
    required TResult Function(VehicleType vehicleType) createOrder,
    required TResult Function() goToPayment,
    required TResult Function() pay,
    required TResult Function(int driverId) loadDriverInfo,
    required TResult Function(BookingStatus bookingStatus) changeStatus,
    required TResult Function(Booking booking) loadBookingData,
    required TResult Function(DriverLocation driverLocation)
        changeDriverLocation,
    required TResult Function(BookingCancelRequest request) cancel,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation, String? refId)?
        locateOnMap,
    TResult? Function(String query)? searchAddressFromText,
    TResult? Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult? Function(MapPickerData mapPickerData)? pickAddress,
    TResult? Function(MapAutoComplete model)? getAddressDetail,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
    TResult? Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult? Function(LatLng from, LatLng to)? getDirection,
    TResult? Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult? Function(VehicleType vehicleType)? createOrder,
    TResult? Function()? goToPayment,
    TResult? Function()? pay,
    TResult? Function(int driverId)? loadDriverInfo,
    TResult? Function(BookingStatus bookingStatus)? changeStatus,
    TResult? Function(Booking booking)? loadBookingData,
    TResult? Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult? Function(BookingCancelRequest request)? cancel,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation, String? refId)? locateOnMap,
    TResult Function(String query)? searchAddressFromText,
    TResult Function(LatLng coordinate)? searchAddressFromCoordinate,
    TResult Function(MapPickerData mapPickerData)? pickAddress,
    TResult Function(MapAutoComplete model)? getAddressDetail,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    TResult Function(LatLng? pickupPoint, LatLng? destinationPoint,
            String? pickupDescription, String? destinationDesciption)?
        updateRouteParams,
    TResult Function(LatLng from, LatLng to)? getDirection,
    TResult Function(VehicleType vehicleType)? changeRouteByVehicle,
    TResult Function(VehicleType vehicleType)? createOrder,
    TResult Function()? goToPayment,
    TResult Function()? pay,
    TResult Function(int driverId)? loadDriverInfo,
    TResult Function(BookingStatus bookingStatus)? changeStatus,
    TResult Function(Booking booking)? loadBookingData,
    TResult Function(DriverLocation driverLocation)? changeDriverLocation,
    TResult Function(BookingCancelRequest request)? cancel,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
    required TResult Function(BookingSearchAddressFromText value)
        searchAddressFromText,
    required TResult Function(BookingSearchAddressFromCoordinate value)
        searchAddressFromCoordinate,
    required TResult Function(BookingPickAddress value) pickAddress,
    required TResult Function(BookingGetAddressDetail value) getAddressDetail,
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingUpdateRouteParams value) updateRouteParams,
    required TResult Function(BookingGetDirection value) getDirection,
    required TResult Function(BookingChangeRouteByVehicle value)
        changeRouteByVehicle,
    required TResult Function(BookingCreateOrder value) createOrder,
    required TResult Function(BookingGoToPayment value) goToPayment,
    required TResult Function(BookingPay value) pay,
    required TResult Function(BookingLoadDriverInfo value) loadDriverInfo,
    required TResult Function(BookingChangeStatus value) changeStatus,
    required TResult Function(BookingLoadBookingData value) loadBookingData,
    required TResult Function(BookingChangeDriverLocation value)
        changeDriverLocation,
    required TResult Function(BookingCancel value) cancel,
    required TResult Function(BookingReset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
    TResult? Function(BookingSearchAddressFromText value)?
        searchAddressFromText,
    TResult? Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult? Function(BookingPickAddress value)? pickAddress,
    TResult? Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult? Function(BookingGetDirection value)? getDirection,
    TResult? Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult? Function(BookingCreateOrder value)? createOrder,
    TResult? Function(BookingGoToPayment value)? goToPayment,
    TResult? Function(BookingPay value)? pay,
    TResult? Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult? Function(BookingChangeStatus value)? changeStatus,
    TResult? Function(BookingLoadBookingData value)? loadBookingData,
    TResult? Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult? Function(BookingCancel value)? cancel,
    TResult? Function(BookingReset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    TResult Function(BookingSearchAddressFromText value)? searchAddressFromText,
    TResult Function(BookingSearchAddressFromCoordinate value)?
        searchAddressFromCoordinate,
    TResult Function(BookingPickAddress value)? pickAddress,
    TResult Function(BookingGetAddressDetail value)? getAddressDetail,
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingUpdateRouteParams value)? updateRouteParams,
    TResult Function(BookingGetDirection value)? getDirection,
    TResult Function(BookingChangeRouteByVehicle value)? changeRouteByVehicle,
    TResult Function(BookingCreateOrder value)? createOrder,
    TResult Function(BookingGoToPayment value)? goToPayment,
    TResult Function(BookingPay value)? pay,
    TResult Function(BookingLoadDriverInfo value)? loadDriverInfo,
    TResult Function(BookingChangeStatus value)? changeStatus,
    TResult Function(BookingLoadBookingData value)? loadBookingData,
    TResult Function(BookingChangeDriverLocation value)? changeDriverLocation,
    TResult Function(BookingCancel value)? cancel,
    TResult Function(BookingReset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class BookingReset implements BookingEvent {
  const factory BookingReset() = _$BookingResetImpl;
}
