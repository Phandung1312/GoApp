// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startBooking,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startBooking,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startBooking,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStartBooking value) startBooking,
    required TResult Function(HomeSelectVehicleType value) selectVehicleType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStartBooking value)? startBooking,
    TResult? Function(HomeSelectVehicleType value)? selectVehicleType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStartBooking value)? startBooking,
    TResult Function(HomeSelectVehicleType value)? selectVehicleType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeStartBookingImplCopyWith<$Res> {
  factory _$$HomeStartBookingImplCopyWith(_$HomeStartBookingImpl value,
          $Res Function(_$HomeStartBookingImpl) then) =
      __$$HomeStartBookingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStartBookingImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeStartBookingImpl>
    implements _$$HomeStartBookingImplCopyWith<$Res> {
  __$$HomeStartBookingImplCopyWithImpl(_$HomeStartBookingImpl _value,
      $Res Function(_$HomeStartBookingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeStartBookingImpl implements HomeStartBooking {
  const _$HomeStartBookingImpl();

  @override
  String toString() {
    return 'HomeEvent.startBooking()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeStartBookingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startBooking,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
  }) {
    return startBooking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startBooking,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
  }) {
    return startBooking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startBooking,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
    required TResult orElse(),
  }) {
    if (startBooking != null) {
      return startBooking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStartBooking value) startBooking,
    required TResult Function(HomeSelectVehicleType value) selectVehicleType,
  }) {
    return startBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStartBooking value)? startBooking,
    TResult? Function(HomeSelectVehicleType value)? selectVehicleType,
  }) {
    return startBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStartBooking value)? startBooking,
    TResult Function(HomeSelectVehicleType value)? selectVehicleType,
    required TResult orElse(),
  }) {
    if (startBooking != null) {
      return startBooking(this);
    }
    return orElse();
  }
}

abstract class HomeStartBooking implements HomeEvent {
  const factory HomeStartBooking() = _$HomeStartBookingImpl;
}

/// @nodoc
abstract class _$$HomeSelectVehicleTypeImplCopyWith<$Res> {
  factory _$$HomeSelectVehicleTypeImplCopyWith(
          _$HomeSelectVehicleTypeImpl value,
          $Res Function(_$HomeSelectVehicleTypeImpl) then) =
      __$$HomeSelectVehicleTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VehicleType vehicleType});
}

/// @nodoc
class __$$HomeSelectVehicleTypeImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeSelectVehicleTypeImpl>
    implements _$$HomeSelectVehicleTypeImplCopyWith<$Res> {
  __$$HomeSelectVehicleTypeImplCopyWithImpl(_$HomeSelectVehicleTypeImpl _value,
      $Res Function(_$HomeSelectVehicleTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleType = null,
  }) {
    return _then(_$HomeSelectVehicleTypeImpl(
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType,
    ));
  }
}

/// @nodoc

class _$HomeSelectVehicleTypeImpl implements HomeSelectVehicleType {
  const _$HomeSelectVehicleTypeImpl({required this.vehicleType});

  @override
  final VehicleType vehicleType;

  @override
  String toString() {
    return 'HomeEvent.selectVehicleType(vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSelectVehicleTypeImpl &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicleType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSelectVehicleTypeImplCopyWith<_$HomeSelectVehicleTypeImpl>
      get copyWith => __$$HomeSelectVehicleTypeImplCopyWithImpl<
          _$HomeSelectVehicleTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startBooking,
    required TResult Function(VehicleType vehicleType) selectVehicleType,
  }) {
    return selectVehicleType(vehicleType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startBooking,
    TResult? Function(VehicleType vehicleType)? selectVehicleType,
  }) {
    return selectVehicleType?.call(vehicleType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startBooking,
    TResult Function(VehicleType vehicleType)? selectVehicleType,
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
    required TResult Function(HomeStartBooking value) startBooking,
    required TResult Function(HomeSelectVehicleType value) selectVehicleType,
  }) {
    return selectVehicleType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStartBooking value)? startBooking,
    TResult? Function(HomeSelectVehicleType value)? selectVehicleType,
  }) {
    return selectVehicleType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStartBooking value)? startBooking,
    TResult Function(HomeSelectVehicleType value)? selectVehicleType,
    required TResult orElse(),
  }) {
    if (selectVehicleType != null) {
      return selectVehicleType(this);
    }
    return orElse();
  }
}

abstract class HomeSelectVehicleType implements HomeEvent {
  const factory HomeSelectVehicleType(
      {required final VehicleType vehicleType}) = _$HomeSelectVehicleTypeImpl;

  VehicleType get vehicleType;
  @JsonKey(ignore: true)
  _$$HomeSelectVehicleTypeImplCopyWith<_$HomeSelectVehicleTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showVehicleType,
    required TResult Function() goToPickLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? showVehicleType,
    TResult? Function()? goToPickLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showVehicleType,
    TResult Function()? goToPickLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitial value) initial,
    required TResult Function(_HomeShowVehicleType value) showVehicleType,
    required TResult Function(_HomeGoToPickLocation value) goToPickLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial value)? initial,
    TResult? Function(_HomeShowVehicleType value)? showVehicleType,
    TResult? Function(_HomeGoToPickLocation value)? goToPickLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial value)? initial,
    TResult Function(_HomeShowVehicleType value)? showVehicleType,
    TResult Function(_HomeGoToPickLocation value)? goToPickLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeInitialImplCopyWith<$Res> {
  factory _$$HomeInitialImplCopyWith(
          _$HomeInitialImpl value, $Res Function(_$HomeInitialImpl) then) =
      __$$HomeInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeInitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeInitialImpl>
    implements _$$HomeInitialImplCopyWith<$Res> {
  __$$HomeInitialImplCopyWithImpl(
      _$HomeInitialImpl _value, $Res Function(_$HomeInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeInitialImpl implements _HomeInitial {
  const _$HomeInitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showVehicleType,
    required TResult Function() goToPickLocation,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? showVehicleType,
    TResult? Function()? goToPickLocation,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showVehicleType,
    TResult Function()? goToPickLocation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitial value) initial,
    required TResult Function(_HomeShowVehicleType value) showVehicleType,
    required TResult Function(_HomeGoToPickLocation value) goToPickLocation,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial value)? initial,
    TResult? Function(_HomeShowVehicleType value)? showVehicleType,
    TResult? Function(_HomeGoToPickLocation value)? goToPickLocation,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial value)? initial,
    TResult Function(_HomeShowVehicleType value)? showVehicleType,
    TResult Function(_HomeGoToPickLocation value)? goToPickLocation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HomeInitial implements HomeState {
  const factory _HomeInitial() = _$HomeInitialImpl;
}

/// @nodoc
abstract class _$$HomeShowVehicleTypeImplCopyWith<$Res> {
  factory _$$HomeShowVehicleTypeImplCopyWith(_$HomeShowVehicleTypeImpl value,
          $Res Function(_$HomeShowVehicleTypeImpl) then) =
      __$$HomeShowVehicleTypeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeShowVehicleTypeImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeShowVehicleTypeImpl>
    implements _$$HomeShowVehicleTypeImplCopyWith<$Res> {
  __$$HomeShowVehicleTypeImplCopyWithImpl(_$HomeShowVehicleTypeImpl _value,
      $Res Function(_$HomeShowVehicleTypeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeShowVehicleTypeImpl implements _HomeShowVehicleType {
  const _$HomeShowVehicleTypeImpl();

  @override
  String toString() {
    return 'HomeState.showVehicleType()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeShowVehicleTypeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showVehicleType,
    required TResult Function() goToPickLocation,
  }) {
    return showVehicleType();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? showVehicleType,
    TResult? Function()? goToPickLocation,
  }) {
    return showVehicleType?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showVehicleType,
    TResult Function()? goToPickLocation,
    required TResult orElse(),
  }) {
    if (showVehicleType != null) {
      return showVehicleType();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitial value) initial,
    required TResult Function(_HomeShowVehicleType value) showVehicleType,
    required TResult Function(_HomeGoToPickLocation value) goToPickLocation,
  }) {
    return showVehicleType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial value)? initial,
    TResult? Function(_HomeShowVehicleType value)? showVehicleType,
    TResult? Function(_HomeGoToPickLocation value)? goToPickLocation,
  }) {
    return showVehicleType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial value)? initial,
    TResult Function(_HomeShowVehicleType value)? showVehicleType,
    TResult Function(_HomeGoToPickLocation value)? goToPickLocation,
    required TResult orElse(),
  }) {
    if (showVehicleType != null) {
      return showVehicleType(this);
    }
    return orElse();
  }
}

abstract class _HomeShowVehicleType implements HomeState {
  const factory _HomeShowVehicleType() = _$HomeShowVehicleTypeImpl;
}

/// @nodoc
abstract class _$$HomeGoToPickLocationImplCopyWith<$Res> {
  factory _$$HomeGoToPickLocationImplCopyWith(_$HomeGoToPickLocationImpl value,
          $Res Function(_$HomeGoToPickLocationImpl) then) =
      __$$HomeGoToPickLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeGoToPickLocationImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeGoToPickLocationImpl>
    implements _$$HomeGoToPickLocationImplCopyWith<$Res> {
  __$$HomeGoToPickLocationImplCopyWithImpl(_$HomeGoToPickLocationImpl _value,
      $Res Function(_$HomeGoToPickLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeGoToPickLocationImpl implements _HomeGoToPickLocation {
  const _$HomeGoToPickLocationImpl();

  @override
  String toString() {
    return 'HomeState.goToPickLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeGoToPickLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showVehicleType,
    required TResult Function() goToPickLocation,
  }) {
    return goToPickLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? showVehicleType,
    TResult? Function()? goToPickLocation,
  }) {
    return goToPickLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showVehicleType,
    TResult Function()? goToPickLocation,
    required TResult orElse(),
  }) {
    if (goToPickLocation != null) {
      return goToPickLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitial value) initial,
    required TResult Function(_HomeShowVehicleType value) showVehicleType,
    required TResult Function(_HomeGoToPickLocation value) goToPickLocation,
  }) {
    return goToPickLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial value)? initial,
    TResult? Function(_HomeShowVehicleType value)? showVehicleType,
    TResult? Function(_HomeGoToPickLocation value)? goToPickLocation,
  }) {
    return goToPickLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial value)? initial,
    TResult Function(_HomeShowVehicleType value)? showVehicleType,
    TResult Function(_HomeGoToPickLocation value)? goToPickLocation,
    required TResult orElse(),
  }) {
    if (goToPickLocation != null) {
      return goToPickLocation(this);
    }
    return orElse();
  }
}

abstract class _HomeGoToPickLocation implements HomeState {
  const factory _HomeGoToPickLocation() = _$HomeGoToPickLocationImpl;
}
