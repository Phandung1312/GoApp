// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_routing_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapRoutingParams {
  LatLng? get pickupLocation => throw _privateConstructorUsedError;
  String? get pickupDescription => throw _privateConstructorUsedError;
  LatLng? get destinationLocation => throw _privateConstructorUsedError;
  String? get destinationDescription => throw _privateConstructorUsedError;
  VehicleType get vehicleType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapRoutingParamsCopyWith<MapRoutingParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapRoutingParamsCopyWith<$Res> {
  factory $MapRoutingParamsCopyWith(
          MapRoutingParams value, $Res Function(MapRoutingParams) then) =
      _$MapRoutingParamsCopyWithImpl<$Res, MapRoutingParams>;
  @useResult
  $Res call(
      {LatLng? pickupLocation,
      String? pickupDescription,
      LatLng? destinationLocation,
      String? destinationDescription,
      VehicleType vehicleType});
}

/// @nodoc
class _$MapRoutingParamsCopyWithImpl<$Res, $Val extends MapRoutingParams>
    implements $MapRoutingParamsCopyWith<$Res> {
  _$MapRoutingParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupLocation = freezed,
    Object? pickupDescription = freezed,
    Object? destinationLocation = freezed,
    Object? destinationDescription = freezed,
    Object? vehicleType = null,
  }) {
    return _then(_value.copyWith(
      pickupLocation: freezed == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      pickupDescription: freezed == pickupDescription
          ? _value.pickupDescription
          : pickupDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationLocation: freezed == destinationLocation
          ? _value.destinationLocation
          : destinationLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      destinationDescription: freezed == destinationDescription
          ? _value.destinationDescription
          : destinationDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapRoutingPramsImplCopyWith<$Res>
    implements $MapRoutingParamsCopyWith<$Res> {
  factory _$$MapRoutingPramsImplCopyWith(_$MapRoutingPramsImpl value,
          $Res Function(_$MapRoutingPramsImpl) then) =
      __$$MapRoutingPramsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LatLng? pickupLocation,
      String? pickupDescription,
      LatLng? destinationLocation,
      String? destinationDescription,
      VehicleType vehicleType});
}

/// @nodoc
class __$$MapRoutingPramsImplCopyWithImpl<$Res>
    extends _$MapRoutingParamsCopyWithImpl<$Res, _$MapRoutingPramsImpl>
    implements _$$MapRoutingPramsImplCopyWith<$Res> {
  __$$MapRoutingPramsImplCopyWithImpl(
      _$MapRoutingPramsImpl _value, $Res Function(_$MapRoutingPramsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupLocation = freezed,
    Object? pickupDescription = freezed,
    Object? destinationLocation = freezed,
    Object? destinationDescription = freezed,
    Object? vehicleType = null,
  }) {
    return _then(_$MapRoutingPramsImpl(
      pickupLocation: freezed == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      pickupDescription: freezed == pickupDescription
          ? _value.pickupDescription
          : pickupDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationLocation: freezed == destinationLocation
          ? _value.destinationLocation
          : destinationLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      destinationDescription: freezed == destinationDescription
          ? _value.destinationDescription
          : destinationDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType,
    ));
  }
}

/// @nodoc

class _$MapRoutingPramsImpl implements _MapRoutingPrams {
  const _$MapRoutingPramsImpl(
      {this.pickupLocation,
      this.pickupDescription,
      this.destinationLocation,
      this.destinationDescription,
      this.vehicleType = VehicleType.motorcycle});

  @override
  final LatLng? pickupLocation;
  @override
  final String? pickupDescription;
  @override
  final LatLng? destinationLocation;
  @override
  final String? destinationDescription;
  @override
  @JsonKey()
  final VehicleType vehicleType;

  @override
  String toString() {
    return 'MapRoutingParams(pickupLocation: $pickupLocation, pickupDescription: $pickupDescription, destinationLocation: $destinationLocation, destinationDescription: $destinationDescription, vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapRoutingPramsImpl &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.pickupDescription, pickupDescription) ||
                other.pickupDescription == pickupDescription) &&
            (identical(other.destinationLocation, destinationLocation) ||
                other.destinationLocation == destinationLocation) &&
            (identical(other.destinationDescription, destinationDescription) ||
                other.destinationDescription == destinationDescription) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pickupLocation,
      pickupDescription,
      destinationLocation,
      destinationDescription,
      vehicleType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapRoutingPramsImplCopyWith<_$MapRoutingPramsImpl> get copyWith =>
      __$$MapRoutingPramsImplCopyWithImpl<_$MapRoutingPramsImpl>(
          this, _$identity);
}

abstract class _MapRoutingPrams implements MapRoutingParams {
  const factory _MapRoutingPrams(
      {final LatLng? pickupLocation,
      final String? pickupDescription,
      final LatLng? destinationLocation,
      final String? destinationDescription,
      final VehicleType vehicleType}) = _$MapRoutingPramsImpl;

  @override
  LatLng? get pickupLocation;
  @override
  String? get pickupDescription;
  @override
  LatLng? get destinationLocation;
  @override
  String? get destinationDescription;
  @override
  VehicleType get vehicleType;
  @override
  @JsonKey(ignore: true)
  _$$MapRoutingPramsImplCopyWith<_$MapRoutingPramsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
