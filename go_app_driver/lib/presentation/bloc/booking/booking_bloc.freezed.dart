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
    required TResult Function(int bookingId) loadInfo,
    required TResult Function() sendBookingStatus,
    required TResult Function(BookingStatus bookingStatus) changeBookingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int bookingId)? loadInfo,
    TResult? Function()? sendBookingStatus,
    TResult? Function(BookingStatus bookingStatus)? changeBookingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int bookingId)? loadInfo,
    TResult Function()? sendBookingStatus,
    TResult Function(BookingStatus bookingStatus)? changeBookingStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingLoadInfo value) loadInfo,
    required TResult Function(BookingSendBookingStatus value) sendBookingStatus,
    required TResult Function(BookingChangeBookingStatus value)
        changeBookingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingLoadInfo value)? loadInfo,
    TResult? Function(BookingSendBookingStatus value)? sendBookingStatus,
    TResult? Function(BookingChangeBookingStatus value)? changeBookingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingLoadInfo value)? loadInfo,
    TResult Function(BookingSendBookingStatus value)? sendBookingStatus,
    TResult Function(BookingChangeBookingStatus value)? changeBookingStatus,
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
abstract class _$$BookingLoadInfoImplCopyWith<$Res> {
  factory _$$BookingLoadInfoImplCopyWith(_$BookingLoadInfoImpl value,
          $Res Function(_$BookingLoadInfoImpl) then) =
      __$$BookingLoadInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int bookingId});
}

/// @nodoc
class __$$BookingLoadInfoImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingLoadInfoImpl>
    implements _$$BookingLoadInfoImplCopyWith<$Res> {
  __$$BookingLoadInfoImplCopyWithImpl(
      _$BookingLoadInfoImpl _value, $Res Function(_$BookingLoadInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
  }) {
    return _then(_$BookingLoadInfoImpl(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BookingLoadInfoImpl implements BookingLoadInfo {
  const _$BookingLoadInfoImpl({required this.bookingId});

  @override
  final int bookingId;

  @override
  String toString() {
    return 'BookingEvent.loadInfo(bookingId: $bookingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingLoadInfoImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingLoadInfoImplCopyWith<_$BookingLoadInfoImpl> get copyWith =>
      __$$BookingLoadInfoImplCopyWithImpl<_$BookingLoadInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int bookingId) loadInfo,
    required TResult Function() sendBookingStatus,
    required TResult Function(BookingStatus bookingStatus) changeBookingStatus,
  }) {
    return loadInfo(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int bookingId)? loadInfo,
    TResult? Function()? sendBookingStatus,
    TResult? Function(BookingStatus bookingStatus)? changeBookingStatus,
  }) {
    return loadInfo?.call(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int bookingId)? loadInfo,
    TResult Function()? sendBookingStatus,
    TResult Function(BookingStatus bookingStatus)? changeBookingStatus,
    required TResult orElse(),
  }) {
    if (loadInfo != null) {
      return loadInfo(bookingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingLoadInfo value) loadInfo,
    required TResult Function(BookingSendBookingStatus value) sendBookingStatus,
    required TResult Function(BookingChangeBookingStatus value)
        changeBookingStatus,
  }) {
    return loadInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingLoadInfo value)? loadInfo,
    TResult? Function(BookingSendBookingStatus value)? sendBookingStatus,
    TResult? Function(BookingChangeBookingStatus value)? changeBookingStatus,
  }) {
    return loadInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingLoadInfo value)? loadInfo,
    TResult Function(BookingSendBookingStatus value)? sendBookingStatus,
    TResult Function(BookingChangeBookingStatus value)? changeBookingStatus,
    required TResult orElse(),
  }) {
    if (loadInfo != null) {
      return loadInfo(this);
    }
    return orElse();
  }
}

abstract class BookingLoadInfo implements BookingEvent {
  const factory BookingLoadInfo({required final int bookingId}) =
      _$BookingLoadInfoImpl;

  int get bookingId;
  @JsonKey(ignore: true)
  _$$BookingLoadInfoImplCopyWith<_$BookingLoadInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingSendBookingStatusImplCopyWith<$Res> {
  factory _$$BookingSendBookingStatusImplCopyWith(
          _$BookingSendBookingStatusImpl value,
          $Res Function(_$BookingSendBookingStatusImpl) then) =
      __$$BookingSendBookingStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingSendBookingStatusImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingSendBookingStatusImpl>
    implements _$$BookingSendBookingStatusImplCopyWith<$Res> {
  __$$BookingSendBookingStatusImplCopyWithImpl(
      _$BookingSendBookingStatusImpl _value,
      $Res Function(_$BookingSendBookingStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingSendBookingStatusImpl implements BookingSendBookingStatus {
  const _$BookingSendBookingStatusImpl();

  @override
  String toString() {
    return 'BookingEvent.sendBookingStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingSendBookingStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int bookingId) loadInfo,
    required TResult Function() sendBookingStatus,
    required TResult Function(BookingStatus bookingStatus) changeBookingStatus,
  }) {
    return sendBookingStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int bookingId)? loadInfo,
    TResult? Function()? sendBookingStatus,
    TResult? Function(BookingStatus bookingStatus)? changeBookingStatus,
  }) {
    return sendBookingStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int bookingId)? loadInfo,
    TResult Function()? sendBookingStatus,
    TResult Function(BookingStatus bookingStatus)? changeBookingStatus,
    required TResult orElse(),
  }) {
    if (sendBookingStatus != null) {
      return sendBookingStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingLoadInfo value) loadInfo,
    required TResult Function(BookingSendBookingStatus value) sendBookingStatus,
    required TResult Function(BookingChangeBookingStatus value)
        changeBookingStatus,
  }) {
    return sendBookingStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingLoadInfo value)? loadInfo,
    TResult? Function(BookingSendBookingStatus value)? sendBookingStatus,
    TResult? Function(BookingChangeBookingStatus value)? changeBookingStatus,
  }) {
    return sendBookingStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingLoadInfo value)? loadInfo,
    TResult Function(BookingSendBookingStatus value)? sendBookingStatus,
    TResult Function(BookingChangeBookingStatus value)? changeBookingStatus,
    required TResult orElse(),
  }) {
    if (sendBookingStatus != null) {
      return sendBookingStatus(this);
    }
    return orElse();
  }
}

abstract class BookingSendBookingStatus implements BookingEvent {
  const factory BookingSendBookingStatus() = _$BookingSendBookingStatusImpl;
}

/// @nodoc
abstract class _$$BookingChangeBookingStatusImplCopyWith<$Res> {
  factory _$$BookingChangeBookingStatusImplCopyWith(
          _$BookingChangeBookingStatusImpl value,
          $Res Function(_$BookingChangeBookingStatusImpl) then) =
      __$$BookingChangeBookingStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BookingStatus bookingStatus});
}

/// @nodoc
class __$$BookingChangeBookingStatusImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingChangeBookingStatusImpl>
    implements _$$BookingChangeBookingStatusImplCopyWith<$Res> {
  __$$BookingChangeBookingStatusImplCopyWithImpl(
      _$BookingChangeBookingStatusImpl _value,
      $Res Function(_$BookingChangeBookingStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingStatus = null,
  }) {
    return _then(_$BookingChangeBookingStatusImpl(
      bookingStatus: null == bookingStatus
          ? _value.bookingStatus
          : bookingStatus // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
    ));
  }
}

/// @nodoc

class _$BookingChangeBookingStatusImpl implements BookingChangeBookingStatus {
  const _$BookingChangeBookingStatusImpl({required this.bookingStatus});

  @override
  final BookingStatus bookingStatus;

  @override
  String toString() {
    return 'BookingEvent.changeBookingStatus(bookingStatus: $bookingStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingChangeBookingStatusImpl &&
            (identical(other.bookingStatus, bookingStatus) ||
                other.bookingStatus == bookingStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingChangeBookingStatusImplCopyWith<_$BookingChangeBookingStatusImpl>
      get copyWith => __$$BookingChangeBookingStatusImplCopyWithImpl<
          _$BookingChangeBookingStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int bookingId) loadInfo,
    required TResult Function() sendBookingStatus,
    required TResult Function(BookingStatus bookingStatus) changeBookingStatus,
  }) {
    return changeBookingStatus(bookingStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int bookingId)? loadInfo,
    TResult? Function()? sendBookingStatus,
    TResult? Function(BookingStatus bookingStatus)? changeBookingStatus,
  }) {
    return changeBookingStatus?.call(bookingStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int bookingId)? loadInfo,
    TResult Function()? sendBookingStatus,
    TResult Function(BookingStatus bookingStatus)? changeBookingStatus,
    required TResult orElse(),
  }) {
    if (changeBookingStatus != null) {
      return changeBookingStatus(bookingStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingLoadInfo value) loadInfo,
    required TResult Function(BookingSendBookingStatus value) sendBookingStatus,
    required TResult Function(BookingChangeBookingStatus value)
        changeBookingStatus,
  }) {
    return changeBookingStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingLoadInfo value)? loadInfo,
    TResult? Function(BookingSendBookingStatus value)? sendBookingStatus,
    TResult? Function(BookingChangeBookingStatus value)? changeBookingStatus,
  }) {
    return changeBookingStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingLoadInfo value)? loadInfo,
    TResult Function(BookingSendBookingStatus value)? sendBookingStatus,
    TResult Function(BookingChangeBookingStatus value)? changeBookingStatus,
    required TResult orElse(),
  }) {
    if (changeBookingStatus != null) {
      return changeBookingStatus(this);
    }
    return orElse();
  }
}

abstract class BookingChangeBookingStatus implements BookingEvent {
  const factory BookingChangeBookingStatus(
          {required final BookingStatus bookingStatus}) =
      _$BookingChangeBookingStatusImpl;

  BookingStatus get bookingStatus;
  @JsonKey(ignore: true)
  _$$BookingChangeBookingStatusImplCopyWith<_$BookingChangeBookingStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}
