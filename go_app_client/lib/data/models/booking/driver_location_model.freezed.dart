// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DriverLocationModel _$DriverLocationModelFromJson(Map<String, dynamic> json) {
  return _DriverLocationModel.fromJson(json);
}

/// @nodoc
mixin _$DriverLocationModel {
  int? get driverId => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get routeEncode => throw _privateConstructorUsedError;
  double? get bearing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverLocationModelCopyWith<DriverLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverLocationModelCopyWith<$Res> {
  factory $DriverLocationModelCopyWith(
          DriverLocationModel value, $Res Function(DriverLocationModel) then) =
      _$DriverLocationModelCopyWithImpl<$Res, DriverLocationModel>;
  @useResult
  $Res call(
      {int? driverId, String? location, String? routeEncode, double? bearing});
}

/// @nodoc
class _$DriverLocationModelCopyWithImpl<$Res, $Val extends DriverLocationModel>
    implements $DriverLocationModelCopyWith<$Res> {
  _$DriverLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverId = freezed,
    Object? location = freezed,
    Object? routeEncode = freezed,
    Object? bearing = freezed,
  }) {
    return _then(_value.copyWith(
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      routeEncode: freezed == routeEncode
          ? _value.routeEncode
          : routeEncode // ignore: cast_nullable_to_non_nullable
              as String?,
      bearing: freezed == bearing
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DriverLocationModelImplCopyWith<$Res>
    implements $DriverLocationModelCopyWith<$Res> {
  factory _$$DriverLocationModelImplCopyWith(_$DriverLocationModelImpl value,
          $Res Function(_$DriverLocationModelImpl) then) =
      __$$DriverLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? driverId, String? location, String? routeEncode, double? bearing});
}

/// @nodoc
class __$$DriverLocationModelImplCopyWithImpl<$Res>
    extends _$DriverLocationModelCopyWithImpl<$Res, _$DriverLocationModelImpl>
    implements _$$DriverLocationModelImplCopyWith<$Res> {
  __$$DriverLocationModelImplCopyWithImpl(_$DriverLocationModelImpl _value,
      $Res Function(_$DriverLocationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverId = freezed,
    Object? location = freezed,
    Object? routeEncode = freezed,
    Object? bearing = freezed,
  }) {
    return _then(_$DriverLocationModelImpl(
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      routeEncode: freezed == routeEncode
          ? _value.routeEncode
          : routeEncode // ignore: cast_nullable_to_non_nullable
              as String?,
      bearing: freezed == bearing
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverLocationModelImpl extends _DriverLocationModel {
  const _$DriverLocationModelImpl(
      {this.driverId, this.location, this.routeEncode, this.bearing})
      : super._();

  factory _$DriverLocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverLocationModelImplFromJson(json);

  @override
  final int? driverId;
  @override
  final String? location;
  @override
  final String? routeEncode;
  @override
  final double? bearing;

  @override
  String toString() {
    return 'DriverLocationModel(driverId: $driverId, location: $location, routeEncode: $routeEncode, bearing: $bearing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverLocationModelImpl &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.routeEncode, routeEncode) ||
                other.routeEncode == routeEncode) &&
            (identical(other.bearing, bearing) || other.bearing == bearing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, driverId, location, routeEncode, bearing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverLocationModelImplCopyWith<_$DriverLocationModelImpl> get copyWith =>
      __$$DriverLocationModelImplCopyWithImpl<_$DriverLocationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverLocationModelImplToJson(
      this,
    );
  }
}

abstract class _DriverLocationModel extends DriverLocationModel {
  const factory _DriverLocationModel(
      {final int? driverId,
      final String? location,
      final String? routeEncode,
      final double? bearing}) = _$DriverLocationModelImpl;
  const _DriverLocationModel._() : super._();

  factory _DriverLocationModel.fromJson(Map<String, dynamic> json) =
      _$DriverLocationModelImpl.fromJson;

  @override
  int? get driverId;
  @override
  String? get location;
  @override
  String? get routeEncode;
  @override
  double? get bearing;
  @override
  @JsonKey(ignore: true)
  _$$DriverLocationModelImplCopyWith<_$DriverLocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
