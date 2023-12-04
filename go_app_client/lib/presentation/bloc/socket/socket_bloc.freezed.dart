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
    required TResult Function() listenMessage,
    required TResult Function() listenBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? listenMessage,
    TResult? Function()? listenBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? listenMessage,
    TResult Function()? listenBooking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketConnect value) connect,
    required TResult Function(_SocketListenMessage value) listenMessage,
    required TResult Function(_SocketListenBooking value) listenBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketConnect value)? connect,
    TResult? Function(_SocketListenMessage value)? listenMessage,
    TResult? Function(_SocketListenBooking value)? listenBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketConnect value)? connect,
    TResult Function(_SocketListenMessage value)? listenMessage,
    TResult Function(_SocketListenBooking value)? listenBooking,
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
    required TResult Function() listenMessage,
    required TResult Function() listenBooking,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? listenMessage,
    TResult? Function()? listenBooking,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? listenMessage,
    TResult Function()? listenBooking,
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
    required TResult Function(_SocketListenMessage value) listenMessage,
    required TResult Function(_SocketListenBooking value) listenBooking,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketConnect value)? connect,
    TResult? Function(_SocketListenMessage value)? listenMessage,
    TResult? Function(_SocketListenBooking value)? listenBooking,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketConnect value)? connect,
    TResult Function(_SocketListenMessage value)? listenMessage,
    TResult Function(_SocketListenBooking value)? listenBooking,
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
abstract class _$$SocketListenMessageImplCopyWith<$Res> {
  factory _$$SocketListenMessageImplCopyWith(_$SocketListenMessageImpl value,
          $Res Function(_$SocketListenMessageImpl) then) =
      __$$SocketListenMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SocketListenMessageImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$SocketListenMessageImpl>
    implements _$$SocketListenMessageImplCopyWith<$Res> {
  __$$SocketListenMessageImplCopyWithImpl(_$SocketListenMessageImpl _value,
      $Res Function(_$SocketListenMessageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SocketListenMessageImpl implements _SocketListenMessage {
  const _$SocketListenMessageImpl();

  @override
  String toString() {
    return 'SocketEvent.listenMessage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketListenMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() listenMessage,
    required TResult Function() listenBooking,
  }) {
    return listenMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? listenMessage,
    TResult? Function()? listenBooking,
  }) {
    return listenMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? listenMessage,
    TResult Function()? listenBooking,
    required TResult orElse(),
  }) {
    if (listenMessage != null) {
      return listenMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketConnect value) connect,
    required TResult Function(_SocketListenMessage value) listenMessage,
    required TResult Function(_SocketListenBooking value) listenBooking,
  }) {
    return listenMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketConnect value)? connect,
    TResult? Function(_SocketListenMessage value)? listenMessage,
    TResult? Function(_SocketListenBooking value)? listenBooking,
  }) {
    return listenMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketConnect value)? connect,
    TResult Function(_SocketListenMessage value)? listenMessage,
    TResult Function(_SocketListenBooking value)? listenBooking,
    required TResult orElse(),
  }) {
    if (listenMessage != null) {
      return listenMessage(this);
    }
    return orElse();
  }
}

abstract class _SocketListenMessage implements SocketEvent {
  const factory _SocketListenMessage() = _$SocketListenMessageImpl;
}

/// @nodoc
abstract class _$$SocketListenBookingImplCopyWith<$Res> {
  factory _$$SocketListenBookingImplCopyWith(_$SocketListenBookingImpl value,
          $Res Function(_$SocketListenBookingImpl) then) =
      __$$SocketListenBookingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SocketListenBookingImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$SocketListenBookingImpl>
    implements _$$SocketListenBookingImplCopyWith<$Res> {
  __$$SocketListenBookingImplCopyWithImpl(_$SocketListenBookingImpl _value,
      $Res Function(_$SocketListenBookingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SocketListenBookingImpl implements _SocketListenBooking {
  const _$SocketListenBookingImpl();

  @override
  String toString() {
    return 'SocketEvent.listenBooking()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketListenBookingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() listenMessage,
    required TResult Function() listenBooking,
  }) {
    return listenBooking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? listenMessage,
    TResult? Function()? listenBooking,
  }) {
    return listenBooking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? listenMessage,
    TResult Function()? listenBooking,
    required TResult orElse(),
  }) {
    if (listenBooking != null) {
      return listenBooking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketConnect value) connect,
    required TResult Function(_SocketListenMessage value) listenMessage,
    required TResult Function(_SocketListenBooking value) listenBooking,
  }) {
    return listenBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketConnect value)? connect,
    TResult? Function(_SocketListenMessage value)? listenMessage,
    TResult? Function(_SocketListenBooking value)? listenBooking,
  }) {
    return listenBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketConnect value)? connect,
    TResult Function(_SocketListenMessage value)? listenMessage,
    TResult Function(_SocketListenBooking value)? listenBooking,
    required TResult orElse(),
  }) {
    if (listenBooking != null) {
      return listenBooking(this);
    }
    return orElse();
  }
}

abstract class _SocketListenBooking implements SocketEvent {
  const factory _SocketListenBooking() = _$SocketListenBookingImpl;
}

/// @nodoc
mixin _$SocketState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() receivedMessage,
    required TResult Function() receivedDriverLocation,
    required TResult Function() receivedDriverId,
    required TResult Function() receivedBookingId,
    required TResult Function() receivedBookingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? receivedMessage,
    TResult? Function()? receivedDriverLocation,
    TResult? Function()? receivedDriverId,
    TResult? Function()? receivedBookingId,
    TResult? Function()? receivedBookingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? receivedMessage,
    TResult Function()? receivedDriverLocation,
    TResult Function()? receivedDriverId,
    TResult Function()? receivedBookingId,
    TResult Function()? receivedBookingStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketInitial value) initial,
    required TResult Function(SocketReceivedMessage value) receivedMessage,
    required TResult Function(SocketReceivedDriverLocation value)
        receivedDriverLocation,
    required TResult Function(SocketReceivedDriverId value) receivedDriverId,
    required TResult Function(SocketReceivedBookingId value) receivedBookingId,
    required TResult Function(SocketReceivedBookingStatus value)
        receivedBookingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketInitial value)? initial,
    TResult? Function(SocketReceivedMessage value)? receivedMessage,
    TResult? Function(SocketReceivedDriverLocation value)?
        receivedDriverLocation,
    TResult? Function(SocketReceivedDriverId value)? receivedDriverId,
    TResult? Function(SocketReceivedBookingId value)? receivedBookingId,
    TResult? Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketInitial value)? initial,
    TResult Function(SocketReceivedMessage value)? receivedMessage,
    TResult Function(SocketReceivedDriverLocation value)?
        receivedDriverLocation,
    TResult Function(SocketReceivedDriverId value)? receivedDriverId,
    TResult Function(SocketReceivedBookingId value)? receivedBookingId,
    TResult Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
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
    required TResult Function() receivedMessage,
    required TResult Function() receivedDriverLocation,
    required TResult Function() receivedDriverId,
    required TResult Function() receivedBookingId,
    required TResult Function() receivedBookingStatus,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? receivedMessage,
    TResult? Function()? receivedDriverLocation,
    TResult? Function()? receivedDriverId,
    TResult? Function()? receivedBookingId,
    TResult? Function()? receivedBookingStatus,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? receivedMessage,
    TResult Function()? receivedDriverLocation,
    TResult Function()? receivedDriverId,
    TResult Function()? receivedBookingId,
    TResult Function()? receivedBookingStatus,
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
    required TResult Function(SocketReceivedMessage value) receivedMessage,
    required TResult Function(SocketReceivedDriverLocation value)
        receivedDriverLocation,
    required TResult Function(SocketReceivedDriverId value) receivedDriverId,
    required TResult Function(SocketReceivedBookingId value) receivedBookingId,
    required TResult Function(SocketReceivedBookingStatus value)
        receivedBookingStatus,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketInitial value)? initial,
    TResult? Function(SocketReceivedMessage value)? receivedMessage,
    TResult? Function(SocketReceivedDriverLocation value)?
        receivedDriverLocation,
    TResult? Function(SocketReceivedDriverId value)? receivedDriverId,
    TResult? Function(SocketReceivedBookingId value)? receivedBookingId,
    TResult? Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketInitial value)? initial,
    TResult Function(SocketReceivedMessage value)? receivedMessage,
    TResult Function(SocketReceivedDriverLocation value)?
        receivedDriverLocation,
    TResult Function(SocketReceivedDriverId value)? receivedDriverId,
    TResult Function(SocketReceivedBookingId value)? receivedBookingId,
    TResult Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
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
abstract class _$$SocketReceivedMessageImplCopyWith<$Res> {
  factory _$$SocketReceivedMessageImplCopyWith(
          _$SocketReceivedMessageImpl value,
          $Res Function(_$SocketReceivedMessageImpl) then) =
      __$$SocketReceivedMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SocketReceivedMessageImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$SocketReceivedMessageImpl>
    implements _$$SocketReceivedMessageImplCopyWith<$Res> {
  __$$SocketReceivedMessageImplCopyWithImpl(_$SocketReceivedMessageImpl _value,
      $Res Function(_$SocketReceivedMessageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SocketReceivedMessageImpl implements SocketReceivedMessage {
  const _$SocketReceivedMessageImpl();

  @override
  String toString() {
    return 'SocketState.receivedMessage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketReceivedMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() receivedMessage,
    required TResult Function() receivedDriverLocation,
    required TResult Function() receivedDriverId,
    required TResult Function() receivedBookingId,
    required TResult Function() receivedBookingStatus,
  }) {
    return receivedMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? receivedMessage,
    TResult? Function()? receivedDriverLocation,
    TResult? Function()? receivedDriverId,
    TResult? Function()? receivedBookingId,
    TResult? Function()? receivedBookingStatus,
  }) {
    return receivedMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? receivedMessage,
    TResult Function()? receivedDriverLocation,
    TResult Function()? receivedDriverId,
    TResult Function()? receivedBookingId,
    TResult Function()? receivedBookingStatus,
    required TResult orElse(),
  }) {
    if (receivedMessage != null) {
      return receivedMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketInitial value) initial,
    required TResult Function(SocketReceivedMessage value) receivedMessage,
    required TResult Function(SocketReceivedDriverLocation value)
        receivedDriverLocation,
    required TResult Function(SocketReceivedDriverId value) receivedDriverId,
    required TResult Function(SocketReceivedBookingId value) receivedBookingId,
    required TResult Function(SocketReceivedBookingStatus value)
        receivedBookingStatus,
  }) {
    return receivedMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketInitial value)? initial,
    TResult? Function(SocketReceivedMessage value)? receivedMessage,
    TResult? Function(SocketReceivedDriverLocation value)?
        receivedDriverLocation,
    TResult? Function(SocketReceivedDriverId value)? receivedDriverId,
    TResult? Function(SocketReceivedBookingId value)? receivedBookingId,
    TResult? Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
  }) {
    return receivedMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketInitial value)? initial,
    TResult Function(SocketReceivedMessage value)? receivedMessage,
    TResult Function(SocketReceivedDriverLocation value)?
        receivedDriverLocation,
    TResult Function(SocketReceivedDriverId value)? receivedDriverId,
    TResult Function(SocketReceivedBookingId value)? receivedBookingId,
    TResult Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    required TResult orElse(),
  }) {
    if (receivedMessage != null) {
      return receivedMessage(this);
    }
    return orElse();
  }
}

abstract class SocketReceivedMessage implements SocketState {
  const factory SocketReceivedMessage() = _$SocketReceivedMessageImpl;
}

/// @nodoc
abstract class _$$SocketReceivedDriverLocationImplCopyWith<$Res> {
  factory _$$SocketReceivedDriverLocationImplCopyWith(
          _$SocketReceivedDriverLocationImpl value,
          $Res Function(_$SocketReceivedDriverLocationImpl) then) =
      __$$SocketReceivedDriverLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SocketReceivedDriverLocationImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$SocketReceivedDriverLocationImpl>
    implements _$$SocketReceivedDriverLocationImplCopyWith<$Res> {
  __$$SocketReceivedDriverLocationImplCopyWithImpl(
      _$SocketReceivedDriverLocationImpl _value,
      $Res Function(_$SocketReceivedDriverLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SocketReceivedDriverLocationImpl
    implements SocketReceivedDriverLocation {
  const _$SocketReceivedDriverLocationImpl();

  @override
  String toString() {
    return 'SocketState.receivedDriverLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketReceivedDriverLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() receivedMessage,
    required TResult Function() receivedDriverLocation,
    required TResult Function() receivedDriverId,
    required TResult Function() receivedBookingId,
    required TResult Function() receivedBookingStatus,
  }) {
    return receivedDriverLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? receivedMessage,
    TResult? Function()? receivedDriverLocation,
    TResult? Function()? receivedDriverId,
    TResult? Function()? receivedBookingId,
    TResult? Function()? receivedBookingStatus,
  }) {
    return receivedDriverLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? receivedMessage,
    TResult Function()? receivedDriverLocation,
    TResult Function()? receivedDriverId,
    TResult Function()? receivedBookingId,
    TResult Function()? receivedBookingStatus,
    required TResult orElse(),
  }) {
    if (receivedDriverLocation != null) {
      return receivedDriverLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketInitial value) initial,
    required TResult Function(SocketReceivedMessage value) receivedMessage,
    required TResult Function(SocketReceivedDriverLocation value)
        receivedDriverLocation,
    required TResult Function(SocketReceivedDriverId value) receivedDriverId,
    required TResult Function(SocketReceivedBookingId value) receivedBookingId,
    required TResult Function(SocketReceivedBookingStatus value)
        receivedBookingStatus,
  }) {
    return receivedDriverLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketInitial value)? initial,
    TResult? Function(SocketReceivedMessage value)? receivedMessage,
    TResult? Function(SocketReceivedDriverLocation value)?
        receivedDriverLocation,
    TResult? Function(SocketReceivedDriverId value)? receivedDriverId,
    TResult? Function(SocketReceivedBookingId value)? receivedBookingId,
    TResult? Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
  }) {
    return receivedDriverLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketInitial value)? initial,
    TResult Function(SocketReceivedMessage value)? receivedMessage,
    TResult Function(SocketReceivedDriverLocation value)?
        receivedDriverLocation,
    TResult Function(SocketReceivedDriverId value)? receivedDriverId,
    TResult Function(SocketReceivedBookingId value)? receivedBookingId,
    TResult Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    required TResult orElse(),
  }) {
    if (receivedDriverLocation != null) {
      return receivedDriverLocation(this);
    }
    return orElse();
  }
}

abstract class SocketReceivedDriverLocation implements SocketState {
  const factory SocketReceivedDriverLocation() =
      _$SocketReceivedDriverLocationImpl;
}

/// @nodoc
abstract class _$$SocketReceivedDriverIdImplCopyWith<$Res> {
  factory _$$SocketReceivedDriverIdImplCopyWith(
          _$SocketReceivedDriverIdImpl value,
          $Res Function(_$SocketReceivedDriverIdImpl) then) =
      __$$SocketReceivedDriverIdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SocketReceivedDriverIdImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$SocketReceivedDriverIdImpl>
    implements _$$SocketReceivedDriverIdImplCopyWith<$Res> {
  __$$SocketReceivedDriverIdImplCopyWithImpl(
      _$SocketReceivedDriverIdImpl _value,
      $Res Function(_$SocketReceivedDriverIdImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SocketReceivedDriverIdImpl implements SocketReceivedDriverId {
  const _$SocketReceivedDriverIdImpl();

  @override
  String toString() {
    return 'SocketState.receivedDriverId()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketReceivedDriverIdImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() receivedMessage,
    required TResult Function() receivedDriverLocation,
    required TResult Function() receivedDriverId,
    required TResult Function() receivedBookingId,
    required TResult Function() receivedBookingStatus,
  }) {
    return receivedDriverId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? receivedMessage,
    TResult? Function()? receivedDriverLocation,
    TResult? Function()? receivedDriverId,
    TResult? Function()? receivedBookingId,
    TResult? Function()? receivedBookingStatus,
  }) {
    return receivedDriverId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? receivedMessage,
    TResult Function()? receivedDriverLocation,
    TResult Function()? receivedDriverId,
    TResult Function()? receivedBookingId,
    TResult Function()? receivedBookingStatus,
    required TResult orElse(),
  }) {
    if (receivedDriverId != null) {
      return receivedDriverId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketInitial value) initial,
    required TResult Function(SocketReceivedMessage value) receivedMessage,
    required TResult Function(SocketReceivedDriverLocation value)
        receivedDriverLocation,
    required TResult Function(SocketReceivedDriverId value) receivedDriverId,
    required TResult Function(SocketReceivedBookingId value) receivedBookingId,
    required TResult Function(SocketReceivedBookingStatus value)
        receivedBookingStatus,
  }) {
    return receivedDriverId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketInitial value)? initial,
    TResult? Function(SocketReceivedMessage value)? receivedMessage,
    TResult? Function(SocketReceivedDriverLocation value)?
        receivedDriverLocation,
    TResult? Function(SocketReceivedDriverId value)? receivedDriverId,
    TResult? Function(SocketReceivedBookingId value)? receivedBookingId,
    TResult? Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
  }) {
    return receivedDriverId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketInitial value)? initial,
    TResult Function(SocketReceivedMessage value)? receivedMessage,
    TResult Function(SocketReceivedDriverLocation value)?
        receivedDriverLocation,
    TResult Function(SocketReceivedDriverId value)? receivedDriverId,
    TResult Function(SocketReceivedBookingId value)? receivedBookingId,
    TResult Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    required TResult orElse(),
  }) {
    if (receivedDriverId != null) {
      return receivedDriverId(this);
    }
    return orElse();
  }
}

abstract class SocketReceivedDriverId implements SocketState {
  const factory SocketReceivedDriverId() = _$SocketReceivedDriverIdImpl;
}

/// @nodoc
abstract class _$$SocketReceivedBookingIdImplCopyWith<$Res> {
  factory _$$SocketReceivedBookingIdImplCopyWith(
          _$SocketReceivedBookingIdImpl value,
          $Res Function(_$SocketReceivedBookingIdImpl) then) =
      __$$SocketReceivedBookingIdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SocketReceivedBookingIdImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$SocketReceivedBookingIdImpl>
    implements _$$SocketReceivedBookingIdImplCopyWith<$Res> {
  __$$SocketReceivedBookingIdImplCopyWithImpl(
      _$SocketReceivedBookingIdImpl _value,
      $Res Function(_$SocketReceivedBookingIdImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SocketReceivedBookingIdImpl implements SocketReceivedBookingId {
  const _$SocketReceivedBookingIdImpl();

  @override
  String toString() {
    return 'SocketState.receivedBookingId()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketReceivedBookingIdImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() receivedMessage,
    required TResult Function() receivedDriverLocation,
    required TResult Function() receivedDriverId,
    required TResult Function() receivedBookingId,
    required TResult Function() receivedBookingStatus,
  }) {
    return receivedBookingId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? receivedMessage,
    TResult? Function()? receivedDriverLocation,
    TResult? Function()? receivedDriverId,
    TResult? Function()? receivedBookingId,
    TResult? Function()? receivedBookingStatus,
  }) {
    return receivedBookingId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? receivedMessage,
    TResult Function()? receivedDriverLocation,
    TResult Function()? receivedDriverId,
    TResult Function()? receivedBookingId,
    TResult Function()? receivedBookingStatus,
    required TResult orElse(),
  }) {
    if (receivedBookingId != null) {
      return receivedBookingId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketInitial value) initial,
    required TResult Function(SocketReceivedMessage value) receivedMessage,
    required TResult Function(SocketReceivedDriverLocation value)
        receivedDriverLocation,
    required TResult Function(SocketReceivedDriverId value) receivedDriverId,
    required TResult Function(SocketReceivedBookingId value) receivedBookingId,
    required TResult Function(SocketReceivedBookingStatus value)
        receivedBookingStatus,
  }) {
    return receivedBookingId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketInitial value)? initial,
    TResult? Function(SocketReceivedMessage value)? receivedMessage,
    TResult? Function(SocketReceivedDriverLocation value)?
        receivedDriverLocation,
    TResult? Function(SocketReceivedDriverId value)? receivedDriverId,
    TResult? Function(SocketReceivedBookingId value)? receivedBookingId,
    TResult? Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
  }) {
    return receivedBookingId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketInitial value)? initial,
    TResult Function(SocketReceivedMessage value)? receivedMessage,
    TResult Function(SocketReceivedDriverLocation value)?
        receivedDriverLocation,
    TResult Function(SocketReceivedDriverId value)? receivedDriverId,
    TResult Function(SocketReceivedBookingId value)? receivedBookingId,
    TResult Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    required TResult orElse(),
  }) {
    if (receivedBookingId != null) {
      return receivedBookingId(this);
    }
    return orElse();
  }
}

abstract class SocketReceivedBookingId implements SocketState {
  const factory SocketReceivedBookingId() = _$SocketReceivedBookingIdImpl;
}

/// @nodoc
abstract class _$$SocketReceivedBookingStatusImplCopyWith<$Res> {
  factory _$$SocketReceivedBookingStatusImplCopyWith(
          _$SocketReceivedBookingStatusImpl value,
          $Res Function(_$SocketReceivedBookingStatusImpl) then) =
      __$$SocketReceivedBookingStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SocketReceivedBookingStatusImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$SocketReceivedBookingStatusImpl>
    implements _$$SocketReceivedBookingStatusImplCopyWith<$Res> {
  __$$SocketReceivedBookingStatusImplCopyWithImpl(
      _$SocketReceivedBookingStatusImpl _value,
      $Res Function(_$SocketReceivedBookingStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SocketReceivedBookingStatusImpl implements SocketReceivedBookingStatus {
  const _$SocketReceivedBookingStatusImpl();

  @override
  String toString() {
    return 'SocketState.receivedBookingStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketReceivedBookingStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() receivedMessage,
    required TResult Function() receivedDriverLocation,
    required TResult Function() receivedDriverId,
    required TResult Function() receivedBookingId,
    required TResult Function() receivedBookingStatus,
  }) {
    return receivedBookingStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? receivedMessage,
    TResult? Function()? receivedDriverLocation,
    TResult? Function()? receivedDriverId,
    TResult? Function()? receivedBookingId,
    TResult? Function()? receivedBookingStatus,
  }) {
    return receivedBookingStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? receivedMessage,
    TResult Function()? receivedDriverLocation,
    TResult Function()? receivedDriverId,
    TResult Function()? receivedBookingId,
    TResult Function()? receivedBookingStatus,
    required TResult orElse(),
  }) {
    if (receivedBookingStatus != null) {
      return receivedBookingStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketInitial value) initial,
    required TResult Function(SocketReceivedMessage value) receivedMessage,
    required TResult Function(SocketReceivedDriverLocation value)
        receivedDriverLocation,
    required TResult Function(SocketReceivedDriverId value) receivedDriverId,
    required TResult Function(SocketReceivedBookingId value) receivedBookingId,
    required TResult Function(SocketReceivedBookingStatus value)
        receivedBookingStatus,
  }) {
    return receivedBookingStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketInitial value)? initial,
    TResult? Function(SocketReceivedMessage value)? receivedMessage,
    TResult? Function(SocketReceivedDriverLocation value)?
        receivedDriverLocation,
    TResult? Function(SocketReceivedDriverId value)? receivedDriverId,
    TResult? Function(SocketReceivedBookingId value)? receivedBookingId,
    TResult? Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
  }) {
    return receivedBookingStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketInitial value)? initial,
    TResult Function(SocketReceivedMessage value)? receivedMessage,
    TResult Function(SocketReceivedDriverLocation value)?
        receivedDriverLocation,
    TResult Function(SocketReceivedDriverId value)? receivedDriverId,
    TResult Function(SocketReceivedBookingId value)? receivedBookingId,
    TResult Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    required TResult orElse(),
  }) {
    if (receivedBookingStatus != null) {
      return receivedBookingStatus(this);
    }
    return orElse();
  }
}

abstract class SocketReceivedBookingStatus implements SocketState {
  const factory SocketReceivedBookingStatus() =
      _$SocketReceivedBookingStatusImpl;
}
