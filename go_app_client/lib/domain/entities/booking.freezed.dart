// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Booking {
  int get id => throw _privateConstructorUsedError;
  num get createAt => throw _privateConstructorUsedError;
  LatLng get pickUpLocation => throw _privateConstructorUsedError;
  String get pickUpAddress => throw _privateConstructorUsedError;
  LatLng get dropOffLocation => throw _privateConstructorUsedError;
  String get dropOffAddress => throw _privateConstructorUsedError;
  BookingStatus get status => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  num get predictTime => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  DriverInfo get driver => throw _privateConstructorUsedError;
  VehicleType get vehicleType => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res, Booking>;
  @useResult
  $Res call(
      {int id,
      num createAt,
      LatLng pickUpLocation,
      String pickUpAddress,
      LatLng dropOffLocation,
      String dropOffAddress,
      BookingStatus status,
      double amount,
      num predictTime,
      double distance,
      DriverInfo driver,
      VehicleType vehicleType,
      String paymentMethod});

  $DriverInfoCopyWith<$Res> get driver;
}

/// @nodoc
class _$BookingCopyWithImpl<$Res, $Val extends Booking>
    implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createAt = null,
    Object? pickUpLocation = null,
    Object? pickUpAddress = null,
    Object? dropOffLocation = null,
    Object? dropOffAddress = null,
    Object? status = null,
    Object? amount = null,
    Object? predictTime = null,
    Object? distance = null,
    Object? driver = null,
    Object? vehicleType = null,
    Object? paymentMethod = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as num,
      pickUpLocation: null == pickUpLocation
          ? _value.pickUpLocation
          : pickUpLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
      pickUpAddress: null == pickUpAddress
          ? _value.pickUpAddress
          : pickUpAddress // ignore: cast_nullable_to_non_nullable
              as String,
      dropOffLocation: null == dropOffLocation
          ? _value.dropOffLocation
          : dropOffLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
      dropOffAddress: null == dropOffAddress
          ? _value.dropOffAddress
          : dropOffAddress // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      predictTime: null == predictTime
          ? _value.predictTime
          : predictTime // ignore: cast_nullable_to_non_nullable
              as num,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      driver: null == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as DriverInfo,
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverInfoCopyWith<$Res> get driver {
    return $DriverInfoCopyWith<$Res>(_value.driver, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingImplCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$$BookingImplCopyWith(
          _$BookingImpl value, $Res Function(_$BookingImpl) then) =
      __$$BookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      num createAt,
      LatLng pickUpLocation,
      String pickUpAddress,
      LatLng dropOffLocation,
      String dropOffAddress,
      BookingStatus status,
      double amount,
      num predictTime,
      double distance,
      DriverInfo driver,
      VehicleType vehicleType,
      String paymentMethod});

  @override
  $DriverInfoCopyWith<$Res> get driver;
}

/// @nodoc
class __$$BookingImplCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$BookingImpl>
    implements _$$BookingImplCopyWith<$Res> {
  __$$BookingImplCopyWithImpl(
      _$BookingImpl _value, $Res Function(_$BookingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createAt = null,
    Object? pickUpLocation = null,
    Object? pickUpAddress = null,
    Object? dropOffLocation = null,
    Object? dropOffAddress = null,
    Object? status = null,
    Object? amount = null,
    Object? predictTime = null,
    Object? distance = null,
    Object? driver = null,
    Object? vehicleType = null,
    Object? paymentMethod = null,
  }) {
    return _then(_$BookingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as num,
      pickUpLocation: null == pickUpLocation
          ? _value.pickUpLocation
          : pickUpLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
      pickUpAddress: null == pickUpAddress
          ? _value.pickUpAddress
          : pickUpAddress // ignore: cast_nullable_to_non_nullable
              as String,
      dropOffLocation: null == dropOffLocation
          ? _value.dropOffLocation
          : dropOffLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
      dropOffAddress: null == dropOffAddress
          ? _value.dropOffAddress
          : dropOffAddress // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      predictTime: null == predictTime
          ? _value.predictTime
          : predictTime // ignore: cast_nullable_to_non_nullable
              as num,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      driver: null == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as DriverInfo,
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookingImpl implements _Booking {
  const _$BookingImpl(
      {this.id = 0,
      this.createAt = 0,
      this.pickUpLocation = const LatLng(0.0, 0.0),
      this.pickUpAddress = "",
      this.dropOffLocation = const LatLng(0.0, 0.0),
      this.dropOffAddress = "",
      this.status = BookingStatus.waitting,
      this.amount = 0.0,
      this.predictTime = 0,
      this.distance = 0.0,
      this.driver = const DriverInfo(),
      this.vehicleType = VehicleType.motorcycle,
      this.paymentMethod = "VnPay"});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final num createAt;
  @override
  @JsonKey()
  final LatLng pickUpLocation;
  @override
  @JsonKey()
  final String pickUpAddress;
  @override
  @JsonKey()
  final LatLng dropOffLocation;
  @override
  @JsonKey()
  final String dropOffAddress;
  @override
  @JsonKey()
  final BookingStatus status;
  @override
  @JsonKey()
  final double amount;
  @override
  @JsonKey()
  final num predictTime;
  @override
  @JsonKey()
  final double distance;
  @override
  @JsonKey()
  final DriverInfo driver;
  @override
  @JsonKey()
  final VehicleType vehicleType;
  @override
  @JsonKey()
  final String paymentMethod;

  @override
  String toString() {
    return 'Booking(id: $id, createAt: $createAt, pickUpLocation: $pickUpLocation, pickUpAddress: $pickUpAddress, dropOffLocation: $dropOffLocation, dropOffAddress: $dropOffAddress, status: $status, amount: $amount, predictTime: $predictTime, distance: $distance, driver: $driver, vehicleType: $vehicleType, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.pickUpLocation, pickUpLocation) ||
                other.pickUpLocation == pickUpLocation) &&
            (identical(other.pickUpAddress, pickUpAddress) ||
                other.pickUpAddress == pickUpAddress) &&
            (identical(other.dropOffLocation, dropOffLocation) ||
                other.dropOffLocation == dropOffLocation) &&
            (identical(other.dropOffAddress, dropOffAddress) ||
                other.dropOffAddress == dropOffAddress) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.predictTime, predictTime) ||
                other.predictTime == predictTime) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createAt,
      pickUpLocation,
      pickUpAddress,
      dropOffLocation,
      dropOffAddress,
      status,
      amount,
      predictTime,
      distance,
      driver,
      vehicleType,
      paymentMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      __$$BookingImplCopyWithImpl<_$BookingImpl>(this, _$identity);
}

abstract class _Booking implements Booking {
  const factory _Booking(
      {final int id,
      final num createAt,
      final LatLng pickUpLocation,
      final String pickUpAddress,
      final LatLng dropOffLocation,
      final String dropOffAddress,
      final BookingStatus status,
      final double amount,
      final num predictTime,
      final double distance,
      final DriverInfo driver,
      final VehicleType vehicleType,
      final String paymentMethod}) = _$BookingImpl;

  @override
  int get id;
  @override
  num get createAt;
  @override
  LatLng get pickUpLocation;
  @override
  String get pickUpAddress;
  @override
  LatLng get dropOffLocation;
  @override
  String get dropOffAddress;
  @override
  BookingStatus get status;
  @override
  double get amount;
  @override
  num get predictTime;
  @override
  double get distance;
  @override
  DriverInfo get driver;
  @override
  VehicleType get vehicleType;
  @override
  String get paymentMethod;
  @override
  @JsonKey(ignore: true)
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
