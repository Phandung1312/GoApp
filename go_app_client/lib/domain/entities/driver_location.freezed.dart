// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DriverLocation {
  LatLng get location => throw _privateConstructorUsedError;
  List<LatLng> get route => throw _privateConstructorUsedError;
  double get bearing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DriverLocationCopyWith<DriverLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverLocationCopyWith<$Res> {
  factory $DriverLocationCopyWith(
          DriverLocation value, $Res Function(DriverLocation) then) =
      _$DriverLocationCopyWithImpl<$Res, DriverLocation>;
  @useResult
  $Res call({LatLng location, List<LatLng> route, double bearing});
}

/// @nodoc
class _$DriverLocationCopyWithImpl<$Res, $Val extends DriverLocation>
    implements $DriverLocationCopyWith<$Res> {
  _$DriverLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? route = null,
    Object? bearing = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      bearing: null == bearing
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DriverLocationImplCopyWith<$Res>
    implements $DriverLocationCopyWith<$Res> {
  factory _$$DriverLocationImplCopyWith(_$DriverLocationImpl value,
          $Res Function(_$DriverLocationImpl) then) =
      __$$DriverLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LatLng location, List<LatLng> route, double bearing});
}

/// @nodoc
class __$$DriverLocationImplCopyWithImpl<$Res>
    extends _$DriverLocationCopyWithImpl<$Res, _$DriverLocationImpl>
    implements _$$DriverLocationImplCopyWith<$Res> {
  __$$DriverLocationImplCopyWithImpl(
      _$DriverLocationImpl _value, $Res Function(_$DriverLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? route = null,
    Object? bearing = null,
  }) {
    return _then(_$DriverLocationImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      route: null == route
          ? _value._route
          : route // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      bearing: null == bearing
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$DriverLocationImpl implements _DriverLocation {
  const _$DriverLocationImpl(
      {this.location = const LatLng(0, 0),
      final List<LatLng> route = const <LatLng>[],
      this.bearing = 0.0})
      : _route = route;

  @override
  @JsonKey()
  final LatLng location;
  final List<LatLng> _route;
  @override
  @JsonKey()
  List<LatLng> get route {
    if (_route is EqualUnmodifiableListView) return _route;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_route);
  }

  @override
  @JsonKey()
  final double bearing;

  @override
  String toString() {
    return 'DriverLocation(location: $location, route: $route, bearing: $bearing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverLocationImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._route, _route) &&
            (identical(other.bearing, bearing) || other.bearing == bearing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location,
      const DeepCollectionEquality().hash(_route), bearing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverLocationImplCopyWith<_$DriverLocationImpl> get copyWith =>
      __$$DriverLocationImplCopyWithImpl<_$DriverLocationImpl>(
          this, _$identity);
}

abstract class _DriverLocation implements DriverLocation {
  const factory _DriverLocation(
      {final LatLng location,
      final List<LatLng> route,
      final double bearing}) = _$DriverLocationImpl;

  @override
  LatLng get location;
  @override
  List<LatLng> get route;
  @override
  double get bearing;
  @override
  @JsonKey(ignore: true)
  _$$DriverLocationImplCopyWith<_$DriverLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
