// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_reverse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapReverse {
  String get address => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get display => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapReverseCopyWith<MapReverse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapReverseCopyWith<$Res> {
  factory $MapReverseCopyWith(
          MapReverse value, $Res Function(MapReverse) then) =
      _$MapReverseCopyWithImpl<$Res, MapReverse>;
  @useResult
  $Res call(
      {String address, String name, String display, double lat, double lng});
}

/// @nodoc
class _$MapReverseCopyWithImpl<$Res, $Val extends MapReverse>
    implements $MapReverseCopyWith<$Res> {
  _$MapReverseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? name = null,
    Object? display = null,
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapReverseImplCopyWith<$Res>
    implements $MapReverseCopyWith<$Res> {
  factory _$$MapReverseImplCopyWith(
          _$MapReverseImpl value, $Res Function(_$MapReverseImpl) then) =
      __$$MapReverseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address, String name, String display, double lat, double lng});
}

/// @nodoc
class __$$MapReverseImplCopyWithImpl<$Res>
    extends _$MapReverseCopyWithImpl<$Res, _$MapReverseImpl>
    implements _$$MapReverseImplCopyWith<$Res> {
  __$$MapReverseImplCopyWithImpl(
      _$MapReverseImpl _value, $Res Function(_$MapReverseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? name = null,
    Object? display = null,
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$MapReverseImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MapReverseImpl implements _MapReverse {
  const _$MapReverseImpl(
      {this.address = "",
      this.name = "",
      this.display = "",
      this.lat = 0.0,
      this.lng = 0.0});

  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String display;
  @override
  @JsonKey()
  final double lat;
  @override
  @JsonKey()
  final double lng;

  @override
  String toString() {
    return 'MapReverse(address: $address, name: $name, display: $display, lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapReverseImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, address, name, display, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapReverseImplCopyWith<_$MapReverseImpl> get copyWith =>
      __$$MapReverseImplCopyWithImpl<_$MapReverseImpl>(this, _$identity);
}

abstract class _MapReverse implements MapReverse {
  const factory _MapReverse(
      {final String address,
      final String name,
      final String display,
      final double lat,
      final double lng}) = _$MapReverseImpl;

  @override
  String get address;
  @override
  String get name;
  @override
  String get display;
  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$MapReverseImplCopyWith<_$MapReverseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
