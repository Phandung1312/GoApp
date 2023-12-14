// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SocketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function(BookingStatusModel bookingStatusModel)
        broadCastBookingStatus,
    required TResult Function(int bookingId) notifyHaveBooking,
    required TResult Function() sendLocation,
    required TResult Function(Message message) broadCastMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function(BookingStatusModel bookingStatusModel)?
        broadCastBookingStatus,
    TResult? Function(int bookingId)? notifyHaveBooking,
    TResult? Function()? sendLocation,
    TResult? Function(Message message)? broadCastMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(BookingStatusModel bookingStatusModel)?
        broadCastBookingStatus,
    TResult Function(int bookingId)? notifyHaveBooking,
    TResult Function()? sendLocation,
    TResult Function(Message message)? broadCastMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketConnect value) connect,
    required TResult Function(_SocketBroadCastBookingStatus value)
        broadCastBookingStatus,
    required TResult Function(_SocketNotifyHaveBooking value) notifyHaveBooking,
    required TResult Function(_SocketBroadCastSendLocation value) sendLocation,
    required TResult Function(_SocketBroadCastMessage value) broadCastMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketConnect value)? connect,
    TResult? Function(_SocketBroadCastBookingStatus value)?
        broadCastBookingStatus,
    TResult? Function(_SocketNotifyHaveBooking value)? notifyHaveBooking,
    TResult? Function(_SocketBroadCastSendLocation value)? sendLocation,
    TResult? Function(_SocketBroadCastMessage value)? broadCastMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketConnect value)? connect,
    TResult Function(_SocketBroadCastBookingStatus value)?
        broadCastBookingStatus,
    TResult Function(_SocketNotifyHaveBooking value)? notifyHaveBooking,
    TResult Function(_SocketBroadCastSendLocation value)? sendLocation,
    TResult Function(_SocketBroadCastMessage value)? broadCastMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketEventCopyWith<$Res> {
  factory $SocketEventCopyWith(
          SocketEvent value, $Res Function(SocketEvent) then) =
      _$SocketEventCopyWithImpl<$Res, SocketEvent>;
}

/// @nodoc
class _$SocketEventCopyWithImpl<$Res, $Val extends SocketEvent>
    implements $SocketEventCopyWith<$Res> {
  _$SocketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SocketConnectImplCopyWith<$Res> {
  factory _$$SocketConnectImplCopyWith(
          _$SocketConnectImpl value, $Res Function(_$SocketConnectImpl) then) =
      __$$SocketConnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SocketConnectImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$SocketConnectImpl>
    implements _$$SocketConnectImplCopyWith<$Res> {
  __$$SocketConnectImplCopyWithImpl(
      _$SocketConnectImpl _value, $Res Function(_$SocketConnectImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SocketConnectImpl implements _SocketConnect {
  const _$SocketConnectImpl();

  @override
  String toString() {
    return 'SocketEvent.connect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SocketConnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function(BookingStatusModel bookingStatusModel)
        broadCastBookingStatus,
    required TResult Function(int bookingId) notifyHaveBooking,
    required TResult Function() sendLocation,
    required TResult Function(Message message) broadCastMessage,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function(BookingStatusModel bookingStatusModel)?
        broadCastBookingStatus,
    TResult? Function(int bookingId)? notifyHaveBooking,
    TResult? Function()? sendLocation,
    TResult? Function(Message message)? broadCastMessage,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(BookingStatusModel bookingStatusModel)?
        broadCastBookingStatus,
    TResult Function(int bookingId)? notifyHaveBooking,
    TResult Function()? sendLocation,
    TResult Function(Message message)? broadCastMessage,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketConnect value) connect,
    required TResult Function(_SocketBroadCastBookingStatus value)
        broadCastBookingStatus,
    required TResult Function(_SocketNotifyHaveBooking value) notifyHaveBooking,
    required TResult Function(_SocketBroadCastSendLocation value) sendLocation,
    required TResult Function(_SocketBroadCastMessage value) broadCastMessage,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketConnect value)? connect,
    TResult? Function(_SocketBroadCastBookingStatus value)?
        broadCastBookingStatus,
    TResult? Function(_SocketNotifyHaveBooking value)? notifyHaveBooking,
    TResult? Function(_SocketBroadCastSendLocation value)? sendLocation,
    TResult? Function(_SocketBroadCastMessage value)? broadCastMessage,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketConnect value)? connect,
    TResult Function(_SocketBroadCastBookingStatus value)?
        broadCastBookingStatus,
    TResult Function(_SocketNotifyHaveBooking value)? notifyHaveBooking,
    TResult Function(_SocketBroadCastSendLocation value)? sendLocation,
    TResult Function(_SocketBroadCastMessage value)? broadCastMessage,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class _SocketConnect implements SocketEvent {
  const factory _SocketConnect() = _$SocketConnectImpl;
}

/// @nodoc
abstract class _$$SocketBroadCastBookingStatusImplCopyWith<$Res> {
  factory _$$SocketBroadCastBookingStatusImplCopyWith(
          _$SocketBroadCastBookingStatusImpl value,
          $Res Function(_$SocketBroadCastBookingStatusImpl) then) =
      __$$SocketBroadCastBookingStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BookingStatusModel bookingStatusModel});

  $BookingStatusModelCopyWith<$Res> get bookingStatusModel;
}

/// @nodoc
class __$$SocketBroadCastBookingStatusImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$SocketBroadCastBookingStatusImpl>
    implements _$$SocketBroadCastBookingStatusImplCopyWith<$Res> {
  __$$SocketBroadCastBookingStatusImplCopyWithImpl(
      _$SocketBroadCastBookingStatusImpl _value,
      $Res Function(_$SocketBroadCastBookingStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingStatusModel = null,
  }) {
    return _then(_$SocketBroadCastBookingStatusImpl(
      bookingStatusModel: null == bookingStatusModel
          ? _value.bookingStatusModel
          : bookingStatusModel // ignore: cast_nullable_to_non_nullable
              as BookingStatusModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingStatusModelCopyWith<$Res> get bookingStatusModel {
    return $BookingStatusModelCopyWith<$Res>(_value.bookingStatusModel,
        (value) {
      return _then(_value.copyWith(bookingStatusModel: value));
    });
  }
}

/// @nodoc

class _$SocketBroadCastBookingStatusImpl
    implements _SocketBroadCastBookingStatus {
  const _$SocketBroadCastBookingStatusImpl({required this.bookingStatusModel});

  @override
  final BookingStatusModel bookingStatusModel;

  @override
  String toString() {
    return 'SocketEvent.broadCastBookingStatus(bookingStatusModel: $bookingStatusModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketBroadCastBookingStatusImpl &&
            (identical(other.bookingStatusModel, bookingStatusModel) ||
                other.bookingStatusModel == bookingStatusModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingStatusModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketBroadCastBookingStatusImplCopyWith<
          _$SocketBroadCastBookingStatusImpl>
      get copyWith => __$$SocketBroadCastBookingStatusImplCopyWithImpl<
          _$SocketBroadCastBookingStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function(BookingStatusModel bookingStatusModel)
        broadCastBookingStatus,
    required TResult Function(int bookingId) notifyHaveBooking,
    required TResult Function() sendLocation,
    required TResult Function(Message message) broadCastMessage,
  }) {
    return broadCastBookingStatus(bookingStatusModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function(BookingStatusModel bookingStatusModel)?
        broadCastBookingStatus,
    TResult? Function(int bookingId)? notifyHaveBooking,
    TResult? Function()? sendLocation,
    TResult? Function(Message message)? broadCastMessage,
  }) {
    return broadCastBookingStatus?.call(bookingStatusModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(BookingStatusModel bookingStatusModel)?
        broadCastBookingStatus,
    TResult Function(int bookingId)? notifyHaveBooking,
    TResult Function()? sendLocation,
    TResult Function(Message message)? broadCastMessage,
    required TResult orElse(),
  }) {
    if (broadCastBookingStatus != null) {
      return broadCastBookingStatus(bookingStatusModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketConnect value) connect,
    required TResult Function(_SocketBroadCastBookingStatus value)
        broadCastBookingStatus,
    required TResult Function(_SocketNotifyHaveBooking value) notifyHaveBooking,
    required TResult Function(_SocketBroadCastSendLocation value) sendLocation,
    required TResult Function(_SocketBroadCastMessage value) broadCastMessage,
  }) {
    return broadCastBookingStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketConnect value)? connect,
    TResult? Function(_SocketBroadCastBookingStatus value)?
        broadCastBookingStatus,
    TResult? Function(_SocketNotifyHaveBooking value)? notifyHaveBooking,
    TResult? Function(_SocketBroadCastSendLocation value)? sendLocation,
    TResult? Function(_SocketBroadCastMessage value)? broadCastMessage,
  }) {
    return broadCastBookingStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketConnect value)? connect,
    TResult Function(_SocketBroadCastBookingStatus value)?
        broadCastBookingStatus,
    TResult Function(_SocketNotifyHaveBooking value)? notifyHaveBooking,
    TResult Function(_SocketBroadCastSendLocation value)? sendLocation,
    TResult Function(_SocketBroadCastMessage value)? broadCastMessage,
    required TResult orElse(),
  }) {
    if (broadCastBookingStatus != null) {
      return broadCastBookingStatus(this);
    }
    return orElse();
  }
}

abstract class _SocketBroadCastBookingStatus implements SocketEvent {
  const factory _SocketBroadCastBookingStatus(
          {required final BookingStatusModel bookingStatusModel}) =
      _$SocketBroadCastBookingStatusImpl;

  BookingStatusModel get bookingStatusModel;
  @JsonKey(ignore: true)
  _$$SocketBroadCastBookingStatusImplCopyWith<
          _$SocketBroadCastBookingStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketNotifyHaveBookingImplCopyWith<$Res> {
  factory _$$SocketNotifyHaveBookingImplCopyWith(
          _$SocketNotifyHaveBookingImpl value,
          $Res Function(_$SocketNotifyHaveBookingImpl) then) =
      __$$SocketNotifyHaveBookingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int bookingId});
}

/// @nodoc
class __$$SocketNotifyHaveBookingImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$SocketNotifyHaveBookingImpl>
    implements _$$SocketNotifyHaveBookingImplCopyWith<$Res> {
  __$$SocketNotifyHaveBookingImplCopyWithImpl(
      _$SocketNotifyHaveBookingImpl _value,
      $Res Function(_$SocketNotifyHaveBookingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
  }) {
    return _then(_$SocketNotifyHaveBookingImpl(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SocketNotifyHaveBookingImpl implements _SocketNotifyHaveBooking {
  const _$SocketNotifyHaveBookingImpl({required this.bookingId});

  @override
  final int bookingId;

  @override
  String toString() {
    return 'SocketEvent.notifyHaveBooking(bookingId: $bookingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketNotifyHaveBookingImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketNotifyHaveBookingImplCopyWith<_$SocketNotifyHaveBookingImpl>
      get copyWith => __$$SocketNotifyHaveBookingImplCopyWithImpl<
          _$SocketNotifyHaveBookingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function(BookingStatusModel bookingStatusModel)
        broadCastBookingStatus,
    required TResult Function(int bookingId) notifyHaveBooking,
    required TResult Function() sendLocation,
    required TResult Function(Message message) broadCastMessage,
  }) {
    return notifyHaveBooking(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function(BookingStatusModel bookingStatusModel)?
        broadCastBookingStatus,
    TResult? Function(int bookingId)? notifyHaveBooking,
    TResult? Function()? sendLocation,
    TResult? Function(Message message)? broadCastMessage,
  }) {
    return notifyHaveBooking?.call(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(BookingStatusModel bookingStatusModel)?
        broadCastBookingStatus,
    TResult Function(int bookingId)? notifyHaveBooking,
    TResult Function()? sendLocation,
    TResult Function(Message message)? broadCastMessage,
    required TResult orElse(),
  }) {
    if (notifyHaveBooking != null) {
      return notifyHaveBooking(bookingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketConnect value) connect,
    required TResult Function(_SocketBroadCastBookingStatus value)
        broadCastBookingStatus,
    required TResult Function(_SocketNotifyHaveBooking value) notifyHaveBooking,
    required TResult Function(_SocketBroadCastSendLocation value) sendLocation,
    required TResult Function(_SocketBroadCastMessage value) broadCastMessage,
  }) {
    return notifyHaveBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketConnect value)? connect,
    TResult? Function(_SocketBroadCastBookingStatus value)?
        broadCastBookingStatus,
    TResult? Function(_SocketNotifyHaveBooking value)? notifyHaveBooking,
    TResult? Function(_SocketBroadCastSendLocation value)? sendLocation,
    TResult? Function(_SocketBroadCastMessage value)? broadCastMessage,
  }) {
    return notifyHaveBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketConnect value)? connect,
    TResult Function(_SocketBroadCastBookingStatus value)?
        broadCastBookingStatus,
    TResult Function(_SocketNotifyHaveBooking value)? notifyHaveBooking,
    TResult Function(_SocketBroadCastSendLocation value)? sendLocation,
    TResult Function(_SocketBroadCastMessage value)? broadCastMessage,
    required TResult orElse(),
  }) {
    if (notifyHaveBooking != null) {
      return notifyHaveBooking(this);
    }
    return orElse();
  }
}

abstract class _SocketNotifyHaveBooking implements SocketEvent {
  const factory _SocketNotifyHaveBooking({required final int bookingId}) =
      _$SocketNotifyHaveBookingImpl;

  int get bookingId;
  @JsonKey(ignore: true)
  _$$SocketNotifyHaveBookingImplCopyWith<_$SocketNotifyHaveBookingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketBroadCastSendLocationImplCopyWith<$Res> {
  factory _$$SocketBroadCastSendLocationImplCopyWith(
          _$SocketBroadCastSendLocationImpl value,
          $Res Function(_$SocketBroadCastSendLocationImpl) then) =
      __$$SocketBroadCastSendLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SocketBroadCastSendLocationImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$SocketBroadCastSendLocationImpl>
    implements _$$SocketBroadCastSendLocationImplCopyWith<$Res> {
  __$$SocketBroadCastSendLocationImplCopyWithImpl(
      _$SocketBroadCastSendLocationImpl _value,
      $Res Function(_$SocketBroadCastSendLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SocketBroadCastSendLocationImpl
    implements _SocketBroadCastSendLocation {
  const _$SocketBroadCastSendLocationImpl();

  @override
  String toString() {
    return 'SocketEvent.sendLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketBroadCastSendLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function(BookingStatusModel bookingStatusModel)
        broadCastBookingStatus,
    required TResult Function(int bookingId) notifyHaveBooking,
    required TResult Function() sendLocation,
    required TResult Function(Message message) broadCastMessage,
  }) {
    return sendLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function(BookingStatusModel bookingStatusModel)?
        broadCastBookingStatus,
    TResult? Function(int bookingId)? notifyHaveBooking,
    TResult? Function()? sendLocation,
    TResult? Function(Message message)? broadCastMessage,
  }) {
    return sendLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(BookingStatusModel bookingStatusModel)?
        broadCastBookingStatus,
    TResult Function(int bookingId)? notifyHaveBooking,
    TResult Function()? sendLocation,
    TResult Function(Message message)? broadCastMessage,
    required TResult orElse(),
  }) {
    if (sendLocation != null) {
      return sendLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketConnect value) connect,
    required TResult Function(_SocketBroadCastBookingStatus value)
        broadCastBookingStatus,
    required TResult Function(_SocketNotifyHaveBooking value) notifyHaveBooking,
    required TResult Function(_SocketBroadCastSendLocation value) sendLocation,
    required TResult Function(_SocketBroadCastMessage value) broadCastMessage,
  }) {
    return sendLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketConnect value)? connect,
    TResult? Function(_SocketBroadCastBookingStatus value)?
        broadCastBookingStatus,
    TResult? Function(_SocketNotifyHaveBooking value)? notifyHaveBooking,
    TResult? Function(_SocketBroadCastSendLocation value)? sendLocation,
    TResult? Function(_SocketBroadCastMessage value)? broadCastMessage,
  }) {
    return sendLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketConnect value)? connect,
    TResult Function(_SocketBroadCastBookingStatus value)?
        broadCastBookingStatus,
    TResult Function(_SocketNotifyHaveBooking value)? notifyHaveBooking,
    TResult Function(_SocketBroadCastSendLocation value)? sendLocation,
    TResult Function(_SocketBroadCastMessage value)? broadCastMessage,
    required TResult orElse(),
  }) {
    if (sendLocation != null) {
      return sendLocation(this);
    }
    return orElse();
  }
}

abstract class _SocketBroadCastSendLocation implements SocketEvent {
  const factory _SocketBroadCastSendLocation() =
      _$SocketBroadCastSendLocationImpl;
}

/// @nodoc
abstract class _$$SocketBroadCastMessageImplCopyWith<$Res> {
  factory _$$SocketBroadCastMessageImplCopyWith(
          _$SocketBroadCastMessageImpl value,
          $Res Function(_$SocketBroadCastMessageImpl) then) =
      __$$SocketBroadCastMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$SocketBroadCastMessageImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$SocketBroadCastMessageImpl>
    implements _$$SocketBroadCastMessageImplCopyWith<$Res> {
  __$$SocketBroadCastMessageImplCopyWithImpl(
      _$SocketBroadCastMessageImpl _value,
      $Res Function(_$SocketBroadCastMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SocketBroadCastMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$SocketBroadCastMessageImpl implements _SocketBroadCastMessage {
  const _$SocketBroadCastMessageImpl(this.message);

  @override
  final Message message;

  @override
  String toString() {
    return 'SocketEvent.broadCastMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketBroadCastMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketBroadCastMessageImplCopyWith<_$SocketBroadCastMessageImpl>
      get copyWith => __$$SocketBroadCastMessageImplCopyWithImpl<
          _$SocketBroadCastMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function(BookingStatusModel bookingStatusModel)
        broadCastBookingStatus,
    required TResult Function(int bookingId) notifyHaveBooking,
    required TResult Function() sendLocation,
    required TResult Function(Message message) broadCastMessage,
  }) {
    return broadCastMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function(BookingStatusModel bookingStatusModel)?
        broadCastBookingStatus,
    TResult? Function(int bookingId)? notifyHaveBooking,
    TResult? Function()? sendLocation,
    TResult? Function(Message message)? broadCastMessage,
  }) {
    return broadCastMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(BookingStatusModel bookingStatusModel)?
        broadCastBookingStatus,
    TResult Function(int bookingId)? notifyHaveBooking,
    TResult Function()? sendLocation,
    TResult Function(Message message)? broadCastMessage,
    required TResult orElse(),
  }) {
    if (broadCastMessage != null) {
      return broadCastMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketConnect value) connect,
    required TResult Function(_SocketBroadCastBookingStatus value)
        broadCastBookingStatus,
    required TResult Function(_SocketNotifyHaveBooking value) notifyHaveBooking,
    required TResult Function(_SocketBroadCastSendLocation value) sendLocation,
    required TResult Function(_SocketBroadCastMessage value) broadCastMessage,
  }) {
    return broadCastMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketConnect value)? connect,
    TResult? Function(_SocketBroadCastBookingStatus value)?
        broadCastBookingStatus,
    TResult? Function(_SocketNotifyHaveBooking value)? notifyHaveBooking,
    TResult? Function(_SocketBroadCastSendLocation value)? sendLocation,
    TResult? Function(_SocketBroadCastMessage value)? broadCastMessage,
  }) {
    return broadCastMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketConnect value)? connect,
    TResult Function(_SocketBroadCastBookingStatus value)?
        broadCastBookingStatus,
    TResult Function(_SocketNotifyHaveBooking value)? notifyHaveBooking,
    TResult Function(_SocketBroadCastSendLocation value)? sendLocation,
    TResult Function(_SocketBroadCastMessage value)? broadCastMessage,
    required TResult orElse(),
  }) {
    if (broadCastMessage != null) {
      return broadCastMessage(this);
    }
    return orElse();
  }
}

abstract class _SocketBroadCastMessage implements SocketEvent {
  const factory _SocketBroadCastMessage(final Message message) =
      _$SocketBroadCastMessageImpl;

  Message get message;
  @JsonKey(ignore: true)
  _$$SocketBroadCastMessageImplCopyWith<_$SocketBroadCastMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SocketState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BookingStatusModel bookingStatus)
        receivedBookingStatus,
    required TResult Function(int bookingId) receivedBooking,
    required TResult Function(Message message) receivedMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(BookingStatusModel bookingStatus)? receivedBookingStatus,
    TResult? Function(int bookingId)? receivedBooking,
    TResult? Function(Message message)? receivedMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BookingStatusModel bookingStatus)? receivedBookingStatus,
    TResult Function(int bookingId)? receivedBooking,
    TResult Function(Message message)? receivedMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketInitial value) initial,
    required TResult Function(SocketReceivedBookingStatus value)
        receivedBookingStatus,
    required TResult Function(SocketReceivedBooking value) receivedBooking,
    required TResult Function(SocketReceivedMessage value) receivedMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketInitial value)? initial,
    TResult? Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult? Function(SocketReceivedBooking value)? receivedBooking,
    TResult? Function(SocketReceivedMessage value)? receivedMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketInitial value)? initial,
    TResult Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult Function(SocketReceivedBooking value)? receivedBooking,
    TResult Function(SocketReceivedMessage value)? receivedMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketStateCopyWith<$Res> {
  factory $SocketStateCopyWith(
          SocketState value, $Res Function(SocketState) then) =
      _$SocketStateCopyWithImpl<$Res, SocketState>;
}

/// @nodoc
class _$SocketStateCopyWithImpl<$Res, $Val extends SocketState>
    implements $SocketStateCopyWith<$Res> {
  _$SocketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SocketInitialImplCopyWith<$Res> {
  factory _$$SocketInitialImplCopyWith(
          _$SocketInitialImpl value, $Res Function(_$SocketInitialImpl) then) =
      __$$SocketInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SocketInitialImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$SocketInitialImpl>
    implements _$$SocketInitialImplCopyWith<$Res> {
  __$$SocketInitialImplCopyWithImpl(
      _$SocketInitialImpl _value, $Res Function(_$SocketInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SocketInitialImpl implements SocketInitial {
  const _$SocketInitialImpl();

  @override
  String toString() {
    return 'SocketState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SocketInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BookingStatusModel bookingStatus)
        receivedBookingStatus,
    required TResult Function(int bookingId) receivedBooking,
    required TResult Function(Message message) receivedMessage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(BookingStatusModel bookingStatus)? receivedBookingStatus,
    TResult? Function(int bookingId)? receivedBooking,
    TResult? Function(Message message)? receivedMessage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BookingStatusModel bookingStatus)? receivedBookingStatus,
    TResult Function(int bookingId)? receivedBooking,
    TResult Function(Message message)? receivedMessage,
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
    required TResult Function(SocketInitial value) initial,
    required TResult Function(SocketReceivedBookingStatus value)
        receivedBookingStatus,
    required TResult Function(SocketReceivedBooking value) receivedBooking,
    required TResult Function(SocketReceivedMessage value) receivedMessage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketInitial value)? initial,
    TResult? Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult? Function(SocketReceivedBooking value)? receivedBooking,
    TResult? Function(SocketReceivedMessage value)? receivedMessage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketInitial value)? initial,
    TResult Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult Function(SocketReceivedBooking value)? receivedBooking,
    TResult Function(SocketReceivedMessage value)? receivedMessage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SocketInitial implements SocketState {
  const factory SocketInitial() = _$SocketInitialImpl;
}

/// @nodoc
abstract class _$$SocketReceivedBookingStatusImplCopyWith<$Res> {
  factory _$$SocketReceivedBookingStatusImplCopyWith(
          _$SocketReceivedBookingStatusImpl value,
          $Res Function(_$SocketReceivedBookingStatusImpl) then) =
      __$$SocketReceivedBookingStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BookingStatusModel bookingStatus});

  $BookingStatusModelCopyWith<$Res> get bookingStatus;
}

/// @nodoc
class __$$SocketReceivedBookingStatusImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$SocketReceivedBookingStatusImpl>
    implements _$$SocketReceivedBookingStatusImplCopyWith<$Res> {
  __$$SocketReceivedBookingStatusImplCopyWithImpl(
      _$SocketReceivedBookingStatusImpl _value,
      $Res Function(_$SocketReceivedBookingStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingStatus = null,
  }) {
    return _then(_$SocketReceivedBookingStatusImpl(
      bookingStatus: null == bookingStatus
          ? _value.bookingStatus
          : bookingStatus // ignore: cast_nullable_to_non_nullable
              as BookingStatusModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingStatusModelCopyWith<$Res> get bookingStatus {
    return $BookingStatusModelCopyWith<$Res>(_value.bookingStatus, (value) {
      return _then(_value.copyWith(bookingStatus: value));
    });
  }
}

/// @nodoc

class _$SocketReceivedBookingStatusImpl implements SocketReceivedBookingStatus {
  const _$SocketReceivedBookingStatusImpl({required this.bookingStatus});

  @override
  final BookingStatusModel bookingStatus;

  @override
  String toString() {
    return 'SocketState.receivedBookingStatus(bookingStatus: $bookingStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketReceivedBookingStatusImpl &&
            (identical(other.bookingStatus, bookingStatus) ||
                other.bookingStatus == bookingStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketReceivedBookingStatusImplCopyWith<_$SocketReceivedBookingStatusImpl>
      get copyWith => __$$SocketReceivedBookingStatusImplCopyWithImpl<
          _$SocketReceivedBookingStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BookingStatusModel bookingStatus)
        receivedBookingStatus,
    required TResult Function(int bookingId) receivedBooking,
    required TResult Function(Message message) receivedMessage,
  }) {
    return receivedBookingStatus(bookingStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(BookingStatusModel bookingStatus)? receivedBookingStatus,
    TResult? Function(int bookingId)? receivedBooking,
    TResult? Function(Message message)? receivedMessage,
  }) {
    return receivedBookingStatus?.call(bookingStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BookingStatusModel bookingStatus)? receivedBookingStatus,
    TResult Function(int bookingId)? receivedBooking,
    TResult Function(Message message)? receivedMessage,
    required TResult orElse(),
  }) {
    if (receivedBookingStatus != null) {
      return receivedBookingStatus(bookingStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketInitial value) initial,
    required TResult Function(SocketReceivedBookingStatus value)
        receivedBookingStatus,
    required TResult Function(SocketReceivedBooking value) receivedBooking,
    required TResult Function(SocketReceivedMessage value) receivedMessage,
  }) {
    return receivedBookingStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketInitial value)? initial,
    TResult? Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult? Function(SocketReceivedBooking value)? receivedBooking,
    TResult? Function(SocketReceivedMessage value)? receivedMessage,
  }) {
    return receivedBookingStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketInitial value)? initial,
    TResult Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult Function(SocketReceivedBooking value)? receivedBooking,
    TResult Function(SocketReceivedMessage value)? receivedMessage,
    required TResult orElse(),
  }) {
    if (receivedBookingStatus != null) {
      return receivedBookingStatus(this);
    }
    return orElse();
  }
}

abstract class SocketReceivedBookingStatus implements SocketState {
  const factory SocketReceivedBookingStatus(
          {required final BookingStatusModel bookingStatus}) =
      _$SocketReceivedBookingStatusImpl;

  BookingStatusModel get bookingStatus;
  @JsonKey(ignore: true)
  _$$SocketReceivedBookingStatusImplCopyWith<_$SocketReceivedBookingStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketReceivedBookingImplCopyWith<$Res> {
  factory _$$SocketReceivedBookingImplCopyWith(
          _$SocketReceivedBookingImpl value,
          $Res Function(_$SocketReceivedBookingImpl) then) =
      __$$SocketReceivedBookingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int bookingId});
}

/// @nodoc
class __$$SocketReceivedBookingImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$SocketReceivedBookingImpl>
    implements _$$SocketReceivedBookingImplCopyWith<$Res> {
  __$$SocketReceivedBookingImplCopyWithImpl(_$SocketReceivedBookingImpl _value,
      $Res Function(_$SocketReceivedBookingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
  }) {
    return _then(_$SocketReceivedBookingImpl(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SocketReceivedBookingImpl implements SocketReceivedBooking {
  const _$SocketReceivedBookingImpl({required this.bookingId});

  @override
  final int bookingId;

  @override
  String toString() {
    return 'SocketState.receivedBooking(bookingId: $bookingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketReceivedBookingImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketReceivedBookingImplCopyWith<_$SocketReceivedBookingImpl>
      get copyWith => __$$SocketReceivedBookingImplCopyWithImpl<
          _$SocketReceivedBookingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BookingStatusModel bookingStatus)
        receivedBookingStatus,
    required TResult Function(int bookingId) receivedBooking,
    required TResult Function(Message message) receivedMessage,
  }) {
    return receivedBooking(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(BookingStatusModel bookingStatus)? receivedBookingStatus,
    TResult? Function(int bookingId)? receivedBooking,
    TResult? Function(Message message)? receivedMessage,
  }) {
    return receivedBooking?.call(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BookingStatusModel bookingStatus)? receivedBookingStatus,
    TResult Function(int bookingId)? receivedBooking,
    TResult Function(Message message)? receivedMessage,
    required TResult orElse(),
  }) {
    if (receivedBooking != null) {
      return receivedBooking(bookingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketInitial value) initial,
    required TResult Function(SocketReceivedBookingStatus value)
        receivedBookingStatus,
    required TResult Function(SocketReceivedBooking value) receivedBooking,
    required TResult Function(SocketReceivedMessage value) receivedMessage,
  }) {
    return receivedBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketInitial value)? initial,
    TResult? Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult? Function(SocketReceivedBooking value)? receivedBooking,
    TResult? Function(SocketReceivedMessage value)? receivedMessage,
  }) {
    return receivedBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketInitial value)? initial,
    TResult Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult Function(SocketReceivedBooking value)? receivedBooking,
    TResult Function(SocketReceivedMessage value)? receivedMessage,
    required TResult orElse(),
  }) {
    if (receivedBooking != null) {
      return receivedBooking(this);
    }
    return orElse();
  }
}

abstract class SocketReceivedBooking implements SocketState {
  const factory SocketReceivedBooking({required final int bookingId}) =
      _$SocketReceivedBookingImpl;

  int get bookingId;
  @JsonKey(ignore: true)
  _$$SocketReceivedBookingImplCopyWith<_$SocketReceivedBookingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketReceivedMessageImplCopyWith<$Res> {
  factory _$$SocketReceivedMessageImplCopyWith(
          _$SocketReceivedMessageImpl value,
          $Res Function(_$SocketReceivedMessageImpl) then) =
      __$$SocketReceivedMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$SocketReceivedMessageImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$SocketReceivedMessageImpl>
    implements _$$SocketReceivedMessageImplCopyWith<$Res> {
  __$$SocketReceivedMessageImplCopyWithImpl(_$SocketReceivedMessageImpl _value,
      $Res Function(_$SocketReceivedMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SocketReceivedMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$SocketReceivedMessageImpl implements SocketReceivedMessage {
  const _$SocketReceivedMessageImpl({required this.message});

  @override
  final Message message;

  @override
  String toString() {
    return 'SocketState.receivedMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketReceivedMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketReceivedMessageImplCopyWith<_$SocketReceivedMessageImpl>
      get copyWith => __$$SocketReceivedMessageImplCopyWithImpl<
          _$SocketReceivedMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BookingStatusModel bookingStatus)
        receivedBookingStatus,
    required TResult Function(int bookingId) receivedBooking,
    required TResult Function(Message message) receivedMessage,
  }) {
    return receivedMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(BookingStatusModel bookingStatus)? receivedBookingStatus,
    TResult? Function(int bookingId)? receivedBooking,
    TResult? Function(Message message)? receivedMessage,
  }) {
    return receivedMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BookingStatusModel bookingStatus)? receivedBookingStatus,
    TResult Function(int bookingId)? receivedBooking,
    TResult Function(Message message)? receivedMessage,
    required TResult orElse(),
  }) {
    if (receivedMessage != null) {
      return receivedMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketInitial value) initial,
    required TResult Function(SocketReceivedBookingStatus value)
        receivedBookingStatus,
    required TResult Function(SocketReceivedBooking value) receivedBooking,
    required TResult Function(SocketReceivedMessage value) receivedMessage,
  }) {
    return receivedMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketInitial value)? initial,
    TResult? Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult? Function(SocketReceivedBooking value)? receivedBooking,
    TResult? Function(SocketReceivedMessage value)? receivedMessage,
  }) {
    return receivedMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketInitial value)? initial,
    TResult Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult Function(SocketReceivedBooking value)? receivedBooking,
    TResult Function(SocketReceivedMessage value)? receivedMessage,
    required TResult orElse(),
  }) {
    if (receivedMessage != null) {
      return receivedMessage(this);
    }
    return orElse();
  }
}

abstract class SocketReceivedMessage implements SocketState {
  const factory SocketReceivedMessage({required final Message message}) =
      _$SocketReceivedMessageImpl;

  Message get message;
  @JsonKey(ignore: true)
  _$$SocketReceivedMessageImplCopyWith<_$SocketReceivedMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
