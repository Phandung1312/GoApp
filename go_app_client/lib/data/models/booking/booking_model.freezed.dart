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
  String? get pickupLocaton => throw _privateConstructorUsedError;
  String? get dropOffLocation => throw _privateConstructorUsedError;
  @BookingStatusConverter()
  BookingStatus? get status => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  num? get predictTime => throw _privateConstructorUsedError;
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
      String? pickupLocaton,
      String? dropOffLocation,
      @BookingStatusConverter() BookingStatus? status,
      double? distance,
      double? amount,
      num? predictTime,
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
    Object? pickupLocaton = freezed,
    Object? dropOffLocation = freezed,
    Object? status = freezed,
    Object? distance = freezed,
    Object? amount = freezed,
    Object? predictTime = freezed,
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
      pickupLocaton: freezed == pickupLocaton
          ? _value.pickupLocaton
          : pickupLocaton // ignore: cast_nullable_to_non_nullable
              as String?,
      dropOffLocation: freezed == dropOffLocation
          ? _value.dropOffLocation
          : dropOffLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingStatus?,
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
      String? pickupLocaton,
      String? dropOffLocation,
      @BookingStatusConverter() BookingStatus? status,
      double? distance,
      double? amount,
      num? predictTime,
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
    Object? pickupLocaton = freezed,
    Object? dropOffLocation = freezed,
    Object? status = freezed,
    Object? distance = freezed,
    Object? amount = freezed,
    Object? predictTime = freezed,
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
      pickupLocaton: freezed == pickupLocaton
          ? _value.pickupLocaton
          : pickupLocaton // ignore: cast_nullable_to_non_nullable
              as String?,
      dropOffLocation: freezed == dropOffLocation
          ? _value.dropOffLocation
          : dropOffLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingStatus?,
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
      this.pickupLocaton,
      this.dropOffLocation,
      @BookingStatusConverter() this.status,
      this.distance,
      this.amount,
      this.predictTime,
      @VehicleTypeConverter() this.vehicleType})
      : super._();

  factory _$BookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingModelImplFromJson(json);

  @override
  final int id;
  @override
  final num? createAt;
  @override
  final String? pickupLocaton;
  @override
  final String? dropOffLocation;
  @override
  @BookingStatusConverter()
  final BookingStatus? status;
  @override
  final double? distance;
  @override
  final double? amount;
  @override
  final num? predictTime;
  @override
  @VehicleTypeConverter()
  final VehicleType? vehicleType;

  @override
  String toString() {
    return 'BookingModel(id: $id, createAt: $createAt, pickupLocaton: $pickupLocaton, dropOffLocation: $dropOffLocation, status: $status, distance: $distance, amount: $amount, predictTime: $predictTime, vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.pickupLocaton, pickupLocaton) ||
                other.pickupLocaton == pickupLocaton) &&
            (identical(other.dropOffLocation, dropOffLocation) ||
                other.dropOffLocation == dropOffLocation) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.predictTime, predictTime) ||
                other.predictTime == predictTime) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createAt, pickupLocaton,
      dropOffLocation, status, distance, amount, predictTime, vehicleType);

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
          final String? pickupLocaton,
          final String? dropOffLocation,
          @BookingStatusConverter() final BookingStatus? status,
          final double? distance,
          final double? amount,
          final num? predictTime,
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
  String? get pickupLocaton;
  @override
  String? get dropOffLocation;
  @override
  @BookingStatusConverter()
  BookingStatus? get status;
  @override
  double? get distance;
  @override
  double? get amount;
  @override
  num? get predictTime;
  @override
  @VehicleTypeConverter()
  VehicleType? get vehicleType;
  @override
  @JsonKey(ignore: true)
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
