// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingModel _$BookingModelFromJson(Map<String, dynamic> json) {
  return _BookingModel.fromJson(json);
}

/// @nodoc
mixin _$BookingModel {
  int get id => throw _privateConstructorUsedError;
  num? get createAt => throw _privateConstructorUsedError;
  String? get pickUpLocation => throw _privateConstructorUsedError;
  String? get pickUpAddress => throw _privateConstructorUsedError;
  String? get dropOffLocation => throw _privateConstructorUsedError;
  String? get dropOffAddress => throw _privateConstructorUsedError;
  @BookingStatusConverter()
  BookingStatus? get status => throw _privateConstructorUsedError;
  int? get customerId => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  num? get predictTime => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;
  int? get driverId => throw _privateConstructorUsedError;
  @VehicleTypeConverter()
  VehicleType? get vehicleType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingModelCopyWith<BookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingModelCopyWith<$Res> {
  factory $BookingModelCopyWith(
          BookingModel value, $Res Function(BookingModel) then) =
      _$BookingModelCopyWithImpl<$Res, BookingModel>;
  @useResult
  $Res call(
      {int id,
      num? createAt,
      String? pickUpLocation,
      String? pickUpAddress,
      String? dropOffLocation,
      String? dropOffAddress,
      @BookingStatusConverter() BookingStatus? status,
      int? customerId,
      double? distance,
      double? amount,
      num? predictTime,
      String? paymentMethod,
      int? driverId,
      @VehicleTypeConverter() VehicleType? vehicleType});
}

/// @nodoc
class _$BookingModelCopyWithImpl<$Res, $Val extends BookingModel>
    implements $BookingModelCopyWith<$Res> {
  _$BookingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createAt = freezed,
    Object? pickUpLocation = freezed,
    Object? pickUpAddress = freezed,
    Object? dropOffLocation = freezed,
    Object? dropOffAddress = freezed,
    Object? status = freezed,
    Object? customerId = freezed,
    Object? distance = freezed,
    Object? amount = freezed,
    Object? predictTime = freezed,
    Object? paymentMethod = freezed,
    Object? driverId = freezed,
    Object? vehicleType = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as num?,
      pickUpLocation: freezed == pickUpLocation
          ? _value.pickUpLocation
          : pickUpLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      pickUpAddress: freezed == pickUpAddress
          ? _value.pickUpAddress
          : pickUpAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      dropOffLocation: freezed == dropOffLocation
          ? _value.dropOffLocation
          : dropOffLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      dropOffAddress: freezed == dropOffAddress
          ? _value.dropOffAddress
          : dropOffAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingStatus?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      predictTime: freezed == predictTime
          ? _value.predictTime
          : predictTime // ignore: cast_nullable_to_non_nullable
              as num?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicleType: freezed == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingModelImplCopyWith<$Res>
    implements $BookingModelCopyWith<$Res> {
  factory _$$BookingModelImplCopyWith(
          _$BookingModelImpl value, $Res Function(_$BookingModelImpl) then) =
      __$$BookingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      num? createAt,
      String? pickUpLocation,
      String? pickUpAddress,
      String? dropOffLocation,
      String? dropOffAddress,
      @BookingStatusConverter() BookingStatus? status,
      int? customerId,
      double? distance,
      double? amount,
      num? predictTime,
      String? paymentMethod,
      int? driverId,
      @VehicleTypeConverter() VehicleType? vehicleType});
}

/// @nodoc
class __$$BookingModelImplCopyWithImpl<$Res>
    extends _$BookingModelCopyWithImpl<$Res, _$BookingModelImpl>
    implements _$$BookingModelImplCopyWith<$Res> {
  __$$BookingModelImplCopyWithImpl(
      _$BookingModelImpl _value, $Res Function(_$BookingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createAt = freezed,
    Object? pickUpLocation = freezed,
    Object? pickUpAddress = freezed,
    Object? dropOffLocation = freezed,
    Object? dropOffAddress = freezed,
    Object? status = freezed,
    Object? customerId = freezed,
    Object? distance = freezed,
    Object? amount = freezed,
    Object? predictTime = freezed,
    Object? paymentMethod = freezed,
    Object? driverId = freezed,
    Object? vehicleType = freezed,
  }) {
    return _then(_$BookingModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as num?,
      pickUpLocation: freezed == pickUpLocation
          ? _value.pickUpLocation
          : pickUpLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      pickUpAddress: freezed == pickUpAddress
          ? _value.pickUpAddress
          : pickUpAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      dropOffLocation: freezed == dropOffLocation
          ? _value.dropOffLocation
          : dropOffLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      dropOffAddress: freezed == dropOffAddress
          ? _value.dropOffAddress
          : dropOffAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingStatus?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      predictTime: freezed == predictTime
          ? _value.predictTime
          : predictTime // ignore: cast_nullable_to_non_nullable
              as num?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicleType: freezed == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingModelImpl extends _BookingModel {
  const _$BookingModelImpl(
      {required this.id,
      this.createAt,
      this.pickUpLocation,
      this.pickUpAddress,
      this.dropOffLocation,
      this.dropOffAddress,
      @BookingStatusConverter() this.status,
      this.customerId,
      this.distance,
      this.amount,
      this.predictTime,
      this.paymentMethod,
      this.driverId,
      @VehicleTypeConverter() this.vehicleType})
      : super._();

  factory _$BookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingModelImplFromJson(json);

  @override
  final int id;
  @override
  final num? createAt;
  @override
  final String? pickUpLocation;
  @override
  final String? pickUpAddress;
  @override
  final String? dropOffLocation;
  @override
  final String? dropOffAddress;
  @override
  @BookingStatusConverter()
  final BookingStatus? status;
  @override
  final int? customerId;
  @override
  final double? distance;
  @override
  final double? amount;
  @override
  final num? predictTime;
  @override
  final String? paymentMethod;
  @override
  final int? driverId;
  @override
  @VehicleTypeConverter()
  final VehicleType? vehicleType;

  @override
  String toString() {
    return 'BookingModel(id: $id, createAt: $createAt, pickUpLocation: $pickUpLocation, pickUpAddress: $pickUpAddress, dropOffLocation: $dropOffLocation, dropOffAddress: $dropOffAddress, status: $status, customerId: $customerId, distance: $distance, amount: $amount, predictTime: $predictTime, paymentMethod: $paymentMethod, driverId: $driverId, vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingModelImpl &&
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
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.predictTime, predictTime) ||
                other.predictTime == predictTime) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType));
  }

  @JsonKey(ignore: true)
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
      customerId,
      distance,
      amount,
      predictTime,
      paymentMethod,
      driverId,
      vehicleType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      __$$BookingModelImplCopyWithImpl<_$BookingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingModelImplToJson(
      this,
    );
  }
}

abstract class _BookingModel extends BookingModel {
  const factory _BookingModel(
          {required final int id,
          final num? createAt,
          final String? pickUpLocation,
          final String? pickUpAddress,
          final String? dropOffLocation,
          final String? dropOffAddress,
          @BookingStatusConverter() final BookingStatus? status,
          final int? customerId,
          final double? distance,
          final double? amount,
          final num? predictTime,
          final String? paymentMethod,
          final int? driverId,
          @VehicleTypeConverter() final VehicleType? vehicleType}) =
      _$BookingModelImpl;
  const _BookingModel._() : super._();

  factory _BookingModel.fromJson(Map<String, dynamic> json) =
      _$BookingModelImpl.fromJson;

  @override
  int get id;
  @override
  num? get createAt;
  @override
  String? get pickUpLocation;
  @override
  String? get pickUpAddress;
  @override
  String? get dropOffLocation;
  @override
  String? get dropOffAddress;
  @override
  @BookingStatusConverter()
  BookingStatus? get status;
  @override
  int? get customerId;
  @override
  double? get distance;
  @override
  double? get amount;
  @override
  num? get predictTime;
  @override
  String? get paymentMethod;
  @override
  int? get driverId;
  @override
  @VehicleTypeConverter()
  VehicleType? get vehicleType;
  @override
  @JsonKey(ignore: true)
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
