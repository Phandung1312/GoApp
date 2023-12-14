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
  LatLng get pickupLocation => throw _privateConstructorUsedError;
  LatLng get dropOffLocation => throw _privateConstructorUsedError;
  BookingStatus get status => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  num get predictTime => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  VehicleType get vehicleType => throw _privateConstructorUsedError;

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
      LatLng pickupLocation,
      LatLng dropOffLocation,
      BookingStatus status,
      double amount,
      num predictTime,
      double distance,
      VehicleType vehicleType});
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
    Object? pickupLocation = null,
    Object? dropOffLocation = null,
    Object? status = null,
    Object? amount = null,
    Object? predictTime = null,
    Object? distance = null,
    Object? vehicleType = null,
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
      pickupLocation: null == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
      dropOffLocation: null == dropOffLocation
          ? _value.dropOffLocation
          : dropOffLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
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
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType,
    ) as $Val);
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
      LatLng pickupLocation,
      LatLng dropOffLocation,
      BookingStatus status,
      double amount,
      num predictTime,
      double distance,
      VehicleType vehicleType});
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
    Object? pickupLocation = null,
    Object? dropOffLocation = null,
    Object? status = null,
    Object? amount = null,
    Object? predictTime = null,
    Object? distance = null,
    Object? vehicleType = null,
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
      pickupLocation: null == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
      dropOffLocation: null == dropOffLocation
          ? _value.dropOffLocation
          : dropOffLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
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
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType,
    ));
  }
}

/// @nodoc

class _$BookingImpl implements _Booking {
  const _$BookingImpl(
      {this.id = 0,
      this.createAt = 0,
      this.pickupLocation = const LatLng(0.0, 0.0),
      this.dropOffLocation = const LatLng(0.0, 0.0),
      this.status = BookingStatus.waitting,
      this.amount = 0.0,
      this.predictTime = 0,
      this.distance = 0.0,
      this.vehicleType = VehicleType.motorcycle});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final num createAt;
  @override
  @JsonKey()
  final LatLng pickupLocation;
  @override
  @JsonKey()
  final LatLng dropOffLocation;
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
  final VehicleType vehicleType;

  @override
  String toString() {
    return 'Booking(id: $id, createAt: $createAt, pickupLocation: $pickupLocation, dropOffLocation: $dropOffLocation, status: $status, amount: $amount, predictTime: $predictTime, distance: $distance, vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.dropOffLocation, dropOffLocation) ||
                other.dropOffLocation == dropOffLocation) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.predictTime, predictTime) ||
                other.predictTime == predictTime) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, createAt, pickupLocation,
      dropOffLocation, status, amount, predictTime, distance, vehicleType);

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
      final LatLng pickupLocation,
      final LatLng dropOffLocation,
      final BookingStatus status,
      final double amount,
      final num predictTime,
      final double distance,
      final VehicleType vehicleType}) = _$BookingImpl;

  @override
  int get id;
  @override
  num get createAt;
  @override
  LatLng get pickupLocation;
  @override
  LatLng get dropOffLocation;
  @override
  BookingStatus get status;
  @override
  double get amount;
  @override
  num get predictTime;
  @override
  double get distance;
  @override
  VehicleType get vehicleType;
  @override
  @JsonKey(ignore: true)
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
