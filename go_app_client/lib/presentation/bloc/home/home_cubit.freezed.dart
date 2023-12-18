// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Booking booking) bookingExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Booking booking)? bookingExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Booking booking)? bookingExists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitial value) initial,
    required TResult Function(HomeBookingExists value) bookingExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial value)? initial,
    TResult? Function(HomeBookingExists value)? bookingExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial value)? initial,
    TResult Function(HomeBookingExists value)? bookingExists,
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
    required TResult Function(Booking booking) bookingExists,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Booking booking)? bookingExists,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Booking booking)? bookingExists,
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
    required TResult Function(HomeBookingExists value) bookingExists,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial value)? initial,
    TResult? Function(HomeBookingExists value)? bookingExists,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial value)? initial,
    TResult Function(HomeBookingExists value)? bookingExists,
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
abstract class _$$HomeBookingExistsImplCopyWith<$Res> {
  factory _$$HomeBookingExistsImplCopyWith(_$HomeBookingExistsImpl value,
          $Res Function(_$HomeBookingExistsImpl) then) =
      __$$HomeBookingExistsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Booking booking});

  $BookingCopyWith<$Res> get booking;
}

/// @nodoc
class __$$HomeBookingExistsImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeBookingExistsImpl>
    implements _$$HomeBookingExistsImplCopyWith<$Res> {
  __$$HomeBookingExistsImplCopyWithImpl(_$HomeBookingExistsImpl _value,
      $Res Function(_$HomeBookingExistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booking = null,
  }) {
    return _then(_$HomeBookingExistsImpl(
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingCopyWith<$Res> get booking {
    return $BookingCopyWith<$Res>(_value.booking, (value) {
      return _then(_value.copyWith(booking: value));
    });
  }
}

/// @nodoc

class _$HomeBookingExistsImpl implements HomeBookingExists {
  const _$HomeBookingExistsImpl({required this.booking});

  @override
  final Booking booking;

  @override
  String toString() {
    return 'HomeState.bookingExists(booking: $booking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBookingExistsImpl &&
            (identical(other.booking, booking) || other.booking == booking));
  }

  @override
  int get hashCode => Object.hash(runtimeType, booking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBookingExistsImplCopyWith<_$HomeBookingExistsImpl> get copyWith =>
      __$$HomeBookingExistsImplCopyWithImpl<_$HomeBookingExistsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Booking booking) bookingExists,
  }) {
    return bookingExists(booking);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Booking booking)? bookingExists,
  }) {
    return bookingExists?.call(booking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Booking booking)? bookingExists,
    required TResult orElse(),
  }) {
    if (bookingExists != null) {
      return bookingExists(booking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitial value) initial,
    required TResult Function(HomeBookingExists value) bookingExists,
  }) {
    return bookingExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial value)? initial,
    TResult? Function(HomeBookingExists value)? bookingExists,
  }) {
    return bookingExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial value)? initial,
    TResult Function(HomeBookingExists value)? bookingExists,
    required TResult orElse(),
  }) {
    if (bookingExists != null) {
      return bookingExists(this);
    }
    return orElse();
  }
}

abstract class HomeBookingExists implements HomeState {
  const factory HomeBookingExists({required final Booking booking}) =
      _$HomeBookingExistsImpl;

  Booking get booking;
  @JsonKey(ignore: true)
  _$$HomeBookingExistsImplCopyWith<_$HomeBookingExistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
