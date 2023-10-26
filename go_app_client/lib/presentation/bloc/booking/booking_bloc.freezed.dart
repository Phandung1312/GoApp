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
    required TResult Function() selectVehicleType,
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation) locateOnMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectVehicleType,
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation)? locateOnMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectVehicleType,
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation)? locateOnMap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
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
abstract class _$$BookingSelectVehicleTypeImplCopyWith<$Res> {
  factory _$$BookingSelectVehicleTypeImplCopyWith(
          _$BookingSelectVehicleTypeImpl value,
          $Res Function(_$BookingSelectVehicleTypeImpl) then) =
      __$$BookingSelectVehicleTypeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingSelectVehicleTypeImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingSelectVehicleTypeImpl>
    implements _$$BookingSelectVehicleTypeImplCopyWith<$Res> {
  __$$BookingSelectVehicleTypeImplCopyWithImpl(
      _$BookingSelectVehicleTypeImpl _value,
      $Res Function(_$BookingSelectVehicleTypeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingSelectVehicleTypeImpl implements BookingSelectVehicleType {
  const _$BookingSelectVehicleTypeImpl();

  @override
  String toString() {
    return 'BookingEvent.selectVehicleType()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingSelectVehicleTypeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectVehicleType,
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation) locateOnMap,
  }) {
    return selectVehicleType();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectVehicleType,
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation)? locateOnMap,
  }) {
    return selectVehicleType?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectVehicleType,
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation)? locateOnMap,
    required TResult orElse(),
  }) {
    if (selectVehicleType != null) {
      return selectVehicleType();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
  }) {
    return selectVehicleType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
  }) {
    return selectVehicleType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
    required TResult orElse(),
  }) {
    if (selectVehicleType != null) {
      return selectVehicleType(this);
    }
    return orElse();
  }
}

abstract class BookingSelectVehicleType implements BookingEvent {
  const factory BookingSelectVehicleType() = _$BookingSelectVehicleTypeImpl;
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
    required TResult Function() selectVehicleType,
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation) locateOnMap,
  }) {
    return selectPickupLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectVehicleType,
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation)? locateOnMap,
  }) {
    return selectPickupLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectVehicleType,
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation)? locateOnMap,
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
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
  }) {
    return selectPickupLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
  }) {
    return selectPickupLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
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
    required TResult Function() selectVehicleType,
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation) locateOnMap,
  }) {
    return selectDesLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectVehicleType,
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation)? locateOnMap,
  }) {
    return selectDesLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectVehicleType,
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation)? locateOnMap,
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
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
  }) {
    return selectDesLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
  }) {
    return selectDesLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
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
  $Res call({SelectLocation selectLocation});
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
  }) {
    return _then(_$BookingLocateOnMapImpl(
      selectLocation: null == selectLocation
          ? _value.selectLocation
          : selectLocation // ignore: cast_nullable_to_non_nullable
              as SelectLocation,
    ));
  }
}

/// @nodoc

class _$BookingLocateOnMapImpl implements BookingLocateOnMap {
  const _$BookingLocateOnMapImpl({required this.selectLocation});

  @override
  final SelectLocation selectLocation;

  @override
  String toString() {
    return 'BookingEvent.locateOnMap(selectLocation: $selectLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingLocateOnMapImpl &&
            (identical(other.selectLocation, selectLocation) ||
                other.selectLocation == selectLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingLocateOnMapImplCopyWith<_$BookingLocateOnMapImpl> get copyWith =>
      __$$BookingLocateOnMapImplCopyWithImpl<_$BookingLocateOnMapImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectVehicleType,
    required TResult Function() selectPickupLocation,
    required TResult Function() selectDesLocation,
    required TResult Function(SelectLocation selectLocation) locateOnMap,
  }) {
    return locateOnMap(selectLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectVehicleType,
    TResult? Function()? selectPickupLocation,
    TResult? Function()? selectDesLocation,
    TResult? Function(SelectLocation selectLocation)? locateOnMap,
  }) {
    return locateOnMap?.call(selectLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectVehicleType,
    TResult Function()? selectPickupLocation,
    TResult Function()? selectDesLocation,
    TResult Function(SelectLocation selectLocation)? locateOnMap,
    required TResult orElse(),
  }) {
    if (locateOnMap != null) {
      return locateOnMap(selectLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingSelectVehicleType value) selectVehicleType,
    required TResult Function(BookingSelectPickupLocation value)
        selectPickupLocation,
    required TResult Function(BookingSelectDesLocation value) selectDesLocation,
    required TResult Function(BookingLocateOnMap value) locateOnMap,
  }) {
    return locateOnMap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult? Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult? Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult? Function(BookingLocateOnMap value)? locateOnMap,
  }) {
    return locateOnMap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingSelectVehicleType value)? selectVehicleType,
    TResult Function(BookingSelectPickupLocation value)? selectPickupLocation,
    TResult Function(BookingSelectDesLocation value)? selectDesLocation,
    TResult Function(BookingLocateOnMap value)? locateOnMap,
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
          {required final SelectLocation selectLocation}) =
      _$BookingLocateOnMapImpl;

  SelectLocation get selectLocation;
  @JsonKey(ignore: true)
  _$$BookingLocateOnMapImplCopyWith<_$BookingLocateOnMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showAddressSheet,
    required TResult Function() locatingPickupLocation,
    required TResult Function() locatingDesLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? showAddressSheet,
    TResult? Function()? locatingPickupLocation,
    TResult? Function()? locatingDesLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showAddressSheet,
    TResult Function()? locatingPickupLocation,
    TResult Function()? locatingDesLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookingInitial value) initial,
    required TResult Function(_BookingShowAddressSheet value) showAddressSheet,
    required TResult Function(_BookingLocatingPickupLocation value)
        locatingPickupLocation,
    required TResult Function(_BookingLocatingDesLocation value)
        locatingDesLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookingInitial value)? initial,
    TResult? Function(_BookingShowAddressSheet value)? showAddressSheet,
    TResult? Function(_BookingLocatingPickupLocation value)?
        locatingPickupLocation,
    TResult? Function(_BookingLocatingDesLocation value)? locatingDesLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookingInitial value)? initial,
    TResult Function(_BookingShowAddressSheet value)? showAddressSheet,
    TResult Function(_BookingLocatingPickupLocation value)?
        locatingPickupLocation,
    TResult Function(_BookingLocatingDesLocation value)? locatingDesLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res, BookingState>;
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res, $Val extends BookingState>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BookingInitialImplCopyWith<$Res> {
  factory _$$BookingInitialImplCopyWith(_$BookingInitialImpl value,
          $Res Function(_$BookingInitialImpl) then) =
      __$$BookingInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingInitialImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingInitialImpl>
    implements _$$BookingInitialImplCopyWith<$Res> {
  __$$BookingInitialImplCopyWithImpl(
      _$BookingInitialImpl _value, $Res Function(_$BookingInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingInitialImpl implements _BookingInitial {
  const _$BookingInitialImpl();

  @override
  String toString() {
    return 'BookingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookingInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showAddressSheet,
    required TResult Function() locatingPickupLocation,
    required TResult Function() locatingDesLocation,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? showAddressSheet,
    TResult? Function()? locatingPickupLocation,
    TResult? Function()? locatingDesLocation,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showAddressSheet,
    TResult Function()? locatingPickupLocation,
    TResult Function()? locatingDesLocation,
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
    required TResult Function(_BookingInitial value) initial,
    required TResult Function(_BookingShowAddressSheet value) showAddressSheet,
    required TResult Function(_BookingLocatingPickupLocation value)
        locatingPickupLocation,
    required TResult Function(_BookingLocatingDesLocation value)
        locatingDesLocation,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookingInitial value)? initial,
    TResult? Function(_BookingShowAddressSheet value)? showAddressSheet,
    TResult? Function(_BookingLocatingPickupLocation value)?
        locatingPickupLocation,
    TResult? Function(_BookingLocatingDesLocation value)? locatingDesLocation,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookingInitial value)? initial,
    TResult Function(_BookingShowAddressSheet value)? showAddressSheet,
    TResult Function(_BookingLocatingPickupLocation value)?
        locatingPickupLocation,
    TResult Function(_BookingLocatingDesLocation value)? locatingDesLocation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _BookingInitial implements BookingState {
  const factory _BookingInitial() = _$BookingInitialImpl;
}

/// @nodoc
abstract class _$$BookingShowAddressSheetImplCopyWith<$Res> {
  factory _$$BookingShowAddressSheetImplCopyWith(
          _$BookingShowAddressSheetImpl value,
          $Res Function(_$BookingShowAddressSheetImpl) then) =
      __$$BookingShowAddressSheetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingShowAddressSheetImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingShowAddressSheetImpl>
    implements _$$BookingShowAddressSheetImplCopyWith<$Res> {
  __$$BookingShowAddressSheetImplCopyWithImpl(
      _$BookingShowAddressSheetImpl _value,
      $Res Function(_$BookingShowAddressSheetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingShowAddressSheetImpl implements _BookingShowAddressSheet {
  const _$BookingShowAddressSheetImpl();

  @override
  String toString() {
    return 'BookingState.showAddressSheet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingShowAddressSheetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showAddressSheet,
    required TResult Function() locatingPickupLocation,
    required TResult Function() locatingDesLocation,
  }) {
    return showAddressSheet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? showAddressSheet,
    TResult? Function()? locatingPickupLocation,
    TResult? Function()? locatingDesLocation,
  }) {
    return showAddressSheet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showAddressSheet,
    TResult Function()? locatingPickupLocation,
    TResult Function()? locatingDesLocation,
    required TResult orElse(),
  }) {
    if (showAddressSheet != null) {
      return showAddressSheet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookingInitial value) initial,
    required TResult Function(_BookingShowAddressSheet value) showAddressSheet,
    required TResult Function(_BookingLocatingPickupLocation value)
        locatingPickupLocation,
    required TResult Function(_BookingLocatingDesLocation value)
        locatingDesLocation,
  }) {
    return showAddressSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookingInitial value)? initial,
    TResult? Function(_BookingShowAddressSheet value)? showAddressSheet,
    TResult? Function(_BookingLocatingPickupLocation value)?
        locatingPickupLocation,
    TResult? Function(_BookingLocatingDesLocation value)? locatingDesLocation,
  }) {
    return showAddressSheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookingInitial value)? initial,
    TResult Function(_BookingShowAddressSheet value)? showAddressSheet,
    TResult Function(_BookingLocatingPickupLocation value)?
        locatingPickupLocation,
    TResult Function(_BookingLocatingDesLocation value)? locatingDesLocation,
    required TResult orElse(),
  }) {
    if (showAddressSheet != null) {
      return showAddressSheet(this);
    }
    return orElse();
  }
}

abstract class _BookingShowAddressSheet implements BookingState {
  const factory _BookingShowAddressSheet() = _$BookingShowAddressSheetImpl;
}

/// @nodoc
abstract class _$$BookingLocatingPickupLocationImplCopyWith<$Res> {
  factory _$$BookingLocatingPickupLocationImplCopyWith(
          _$BookingLocatingPickupLocationImpl value,
          $Res Function(_$BookingLocatingPickupLocationImpl) then) =
      __$$BookingLocatingPickupLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingLocatingPickupLocationImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res,
        _$BookingLocatingPickupLocationImpl>
    implements _$$BookingLocatingPickupLocationImplCopyWith<$Res> {
  __$$BookingLocatingPickupLocationImplCopyWithImpl(
      _$BookingLocatingPickupLocationImpl _value,
      $Res Function(_$BookingLocatingPickupLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingLocatingPickupLocationImpl
    implements _BookingLocatingPickupLocation {
  const _$BookingLocatingPickupLocationImpl();

  @override
  String toString() {
    return 'BookingState.locatingPickupLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingLocatingPickupLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showAddressSheet,
    required TResult Function() locatingPickupLocation,
    required TResult Function() locatingDesLocation,
  }) {
    return locatingPickupLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? showAddressSheet,
    TResult? Function()? locatingPickupLocation,
    TResult? Function()? locatingDesLocation,
  }) {
    return locatingPickupLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showAddressSheet,
    TResult Function()? locatingPickupLocation,
    TResult Function()? locatingDesLocation,
    required TResult orElse(),
  }) {
    if (locatingPickupLocation != null) {
      return locatingPickupLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookingInitial value) initial,
    required TResult Function(_BookingShowAddressSheet value) showAddressSheet,
    required TResult Function(_BookingLocatingPickupLocation value)
        locatingPickupLocation,
    required TResult Function(_BookingLocatingDesLocation value)
        locatingDesLocation,
  }) {
    return locatingPickupLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookingInitial value)? initial,
    TResult? Function(_BookingShowAddressSheet value)? showAddressSheet,
    TResult? Function(_BookingLocatingPickupLocation value)?
        locatingPickupLocation,
    TResult? Function(_BookingLocatingDesLocation value)? locatingDesLocation,
  }) {
    return locatingPickupLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookingInitial value)? initial,
    TResult Function(_BookingShowAddressSheet value)? showAddressSheet,
    TResult Function(_BookingLocatingPickupLocation value)?
        locatingPickupLocation,
    TResult Function(_BookingLocatingDesLocation value)? locatingDesLocation,
    required TResult orElse(),
  }) {
    if (locatingPickupLocation != null) {
      return locatingPickupLocation(this);
    }
    return orElse();
  }
}

abstract class _BookingLocatingPickupLocation implements BookingState {
  const factory _BookingLocatingPickupLocation() =
      _$BookingLocatingPickupLocationImpl;
}

/// @nodoc
abstract class _$$BookingLocatingDesLocationImplCopyWith<$Res> {
  factory _$$BookingLocatingDesLocationImplCopyWith(
          _$BookingLocatingDesLocationImpl value,
          $Res Function(_$BookingLocatingDesLocationImpl) then) =
      __$$BookingLocatingDesLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingLocatingDesLocationImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingLocatingDesLocationImpl>
    implements _$$BookingLocatingDesLocationImplCopyWith<$Res> {
  __$$BookingLocatingDesLocationImplCopyWithImpl(
      _$BookingLocatingDesLocationImpl _value,
      $Res Function(_$BookingLocatingDesLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingLocatingDesLocationImpl implements _BookingLocatingDesLocation {
  const _$BookingLocatingDesLocationImpl();

  @override
  String toString() {
    return 'BookingState.locatingDesLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingLocatingDesLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showAddressSheet,
    required TResult Function() locatingPickupLocation,
    required TResult Function() locatingDesLocation,
  }) {
    return locatingDesLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? showAddressSheet,
    TResult? Function()? locatingPickupLocation,
    TResult? Function()? locatingDesLocation,
  }) {
    return locatingDesLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showAddressSheet,
    TResult Function()? locatingPickupLocation,
    TResult Function()? locatingDesLocation,
    required TResult orElse(),
  }) {
    if (locatingDesLocation != null) {
      return locatingDesLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookingInitial value) initial,
    required TResult Function(_BookingShowAddressSheet value) showAddressSheet,
    required TResult Function(_BookingLocatingPickupLocation value)
        locatingPickupLocation,
    required TResult Function(_BookingLocatingDesLocation value)
        locatingDesLocation,
  }) {
    return locatingDesLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookingInitial value)? initial,
    TResult? Function(_BookingShowAddressSheet value)? showAddressSheet,
    TResult? Function(_BookingLocatingPickupLocation value)?
        locatingPickupLocation,
    TResult? Function(_BookingLocatingDesLocation value)? locatingDesLocation,
  }) {
    return locatingDesLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookingInitial value)? initial,
    TResult Function(_BookingShowAddressSheet value)? showAddressSheet,
    TResult Function(_BookingLocatingPickupLocation value)?
        locatingPickupLocation,
    TResult Function(_BookingLocatingDesLocation value)? locatingDesLocation,
    required TResult orElse(),
  }) {
    if (locatingDesLocation != null) {
      return locatingDesLocation(this);
    }
    return orElse();
  }
}

abstract class _BookingLocatingDesLocation implements BookingState {
  const factory _BookingLocatingDesLocation() =
      _$BookingLocatingDesLocationImpl;
}
