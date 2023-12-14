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
    required TResult Function(BookingStatus status) sendBookingStatus,
    required TResult Function(int driverId) broadCastDriverInfo,
    required TResult Function(LatLng location) broadCastDriverLocation,
    required TResult Function(Message message) broadCastMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? listenMessage,
    TResult? Function()? listenBooking,
    TResult? Function(BookingStatus status)? sendBookingStatus,
    TResult? Function(int driverId)? broadCastDriverInfo,
    TResult? Function(LatLng location)? broadCastDriverLocation,
    TResult? Function(Message message)? broadCastMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? listenMessage,
    TResult Function()? listenBooking,
    TResult Function(BookingStatus status)? sendBookingStatus,
    TResult Function(int driverId)? broadCastDriverInfo,
    TResult Function(LatLng location)? broadCastDriverLocation,
    TResult Function(Message message)? broadCastMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketConnect value) connect,
    required TResult Function(_SocketListenMessage value) listenMessage,
    required TResult Function(_SocketListenBooking value) listenBooking,
    required TResult Function(SocketSendBookingStatus value) sendBookingStatus,
    required TResult Function(SocketBroadCastDriverInfo value)
        broadCastDriverInfo,
    required TResult Function(SocketBroadCastDriverLocation value)
        broadCastDriverLocation,
    required TResult Function(_SocketBroadCastMessage value) broadCastMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketConnect value)? connect,
    TResult? Function(_SocketListenMessage value)? listenMessage,
    TResult? Function(_SocketListenBooking value)? listenBooking,
    TResult? Function(SocketSendBookingStatus value)? sendBookingStatus,
    TResult? Function(SocketBroadCastDriverInfo value)? broadCastDriverInfo,
    TResult? Function(SocketBroadCastDriverLocation value)?
        broadCastDriverLocation,
    TResult? Function(_SocketBroadCastMessage value)? broadCastMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketConnect value)? connect,
    TResult Function(_SocketListenMessage value)? listenMessage,
    TResult Function(_SocketListenBooking value)? listenBooking,
    TResult Function(SocketSendBookingStatus value)? sendBookingStatus,
    TResult Function(SocketBroadCastDriverInfo value)? broadCastDriverInfo,
    TResult Function(SocketBroadCastDriverLocation value)?
        broadCastDriverLocation,
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
    required TResult Function() listenMessage,
    required TResult Function() listenBooking,
    required TResult Function(BookingStatus status) sendBookingStatus,
    required TResult Function(int driverId) broadCastDriverInfo,
    required TResult Function(LatLng location) broadCastDriverLocation,
    required TResult Function(Message message) broadCastMessage,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? listenMessage,
    TResult? Function()? listenBooking,
    TResult? Function(BookingStatus status)? sendBookingStatus,
    TResult? Function(int driverId)? broadCastDriverInfo,
    TResult? Function(LatLng location)? broadCastDriverLocation,
    TResult? Function(Message message)? broadCastMessage,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? listenMessage,
    TResult Function()? listenBooking,
    TResult Function(BookingStatus status)? sendBookingStatus,
    TResult Function(int driverId)? broadCastDriverInfo,
    TResult Function(LatLng location)? broadCastDriverLocation,
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
    required TResult Function(_SocketListenMessage value) listenMessage,
    required TResult Function(_SocketListenBooking value) listenBooking,
    required TResult Function(SocketSendBookingStatus value) sendBookingStatus,
    required TResult Function(SocketBroadCastDriverInfo value)
        broadCastDriverInfo,
    required TResult Function(SocketBroadCastDriverLocation value)
        broadCastDriverLocation,
    required TResult Function(_SocketBroadCastMessage value) broadCastMessage,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketConnect value)? connect,
    TResult? Function(_SocketListenMessage value)? listenMessage,
    TResult? Function(_SocketListenBooking value)? listenBooking,
    TResult? Function(SocketSendBookingStatus value)? sendBookingStatus,
    TResult? Function(SocketBroadCastDriverInfo value)? broadCastDriverInfo,
    TResult? Function(SocketBroadCastDriverLocation value)?
        broadCastDriverLocation,
    TResult? Function(_SocketBroadCastMessage value)? broadCastMessage,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketConnect value)? connect,
    TResult Function(_SocketListenMessage value)? listenMessage,
    TResult Function(_SocketListenBooking value)? listenBooking,
    TResult Function(SocketSendBookingStatus value)? sendBookingStatus,
    TResult Function(SocketBroadCastDriverInfo value)? broadCastDriverInfo,
    TResult Function(SocketBroadCastDriverLocation value)?
        broadCastDriverLocation,
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
    required TResult Function(BookingStatus status) sendBookingStatus,
    required TResult Function(int driverId) broadCastDriverInfo,
    required TResult Function(LatLng location) broadCastDriverLocation,
    required TResult Function(Message message) broadCastMessage,
  }) {
    return listenMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? listenMessage,
    TResult? Function()? listenBooking,
    TResult? Function(BookingStatus status)? sendBookingStatus,
    TResult? Function(int driverId)? broadCastDriverInfo,
    TResult? Function(LatLng location)? broadCastDriverLocation,
    TResult? Function(Message message)? broadCastMessage,
  }) {
    return listenMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? listenMessage,
    TResult Function()? listenBooking,
    TResult Function(BookingStatus status)? sendBookingStatus,
    TResult Function(int driverId)? broadCastDriverInfo,
    TResult Function(LatLng location)? broadCastDriverLocation,
    TResult Function(Message message)? broadCastMessage,
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
    required TResult Function(SocketSendBookingStatus value) sendBookingStatus,
    required TResult Function(SocketBroadCastDriverInfo value)
        broadCastDriverInfo,
    required TResult Function(SocketBroadCastDriverLocation value)
        broadCastDriverLocation,
    required TResult Function(_SocketBroadCastMessage value) broadCastMessage,
  }) {
    return listenMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketConnect value)? connect,
    TResult? Function(_SocketListenMessage value)? listenMessage,
    TResult? Function(_SocketListenBooking value)? listenBooking,
    TResult? Function(SocketSendBookingStatus value)? sendBookingStatus,
    TResult? Function(SocketBroadCastDriverInfo value)? broadCastDriverInfo,
    TResult? Function(SocketBroadCastDriverLocation value)?
        broadCastDriverLocation,
    TResult? Function(_SocketBroadCastMessage value)? broadCastMessage,
  }) {
    return listenMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketConnect value)? connect,
    TResult Function(_SocketListenMessage value)? listenMessage,
    TResult Function(_SocketListenBooking value)? listenBooking,
    TResult Function(SocketSendBookingStatus value)? sendBookingStatus,
    TResult Function(SocketBroadCastDriverInfo value)? broadCastDriverInfo,
    TResult Function(SocketBroadCastDriverLocation value)?
        broadCastDriverLocation,
    TResult Function(_SocketBroadCastMessage value)? broadCastMessage,
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
    required TResult Function(BookingStatus status) sendBookingStatus,
    required TResult Function(int driverId) broadCastDriverInfo,
    required TResult Function(LatLng location) broadCastDriverLocation,
    required TResult Function(Message message) broadCastMessage,
  }) {
    return listenBooking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? listenMessage,
    TResult? Function()? listenBooking,
    TResult? Function(BookingStatus status)? sendBookingStatus,
    TResult? Function(int driverId)? broadCastDriverInfo,
    TResult? Function(LatLng location)? broadCastDriverLocation,
    TResult? Function(Message message)? broadCastMessage,
  }) {
    return listenBooking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? listenMessage,
    TResult Function()? listenBooking,
    TResult Function(BookingStatus status)? sendBookingStatus,
    TResult Function(int driverId)? broadCastDriverInfo,
    TResult Function(LatLng location)? broadCastDriverLocation,
    TResult Function(Message message)? broadCastMessage,
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
    required TResult Function(SocketSendBookingStatus value) sendBookingStatus,
    required TResult Function(SocketBroadCastDriverInfo value)
        broadCastDriverInfo,
    required TResult Function(SocketBroadCastDriverLocation value)
        broadCastDriverLocation,
    required TResult Function(_SocketBroadCastMessage value) broadCastMessage,
  }) {
    return listenBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketConnect value)? connect,
    TResult? Function(_SocketListenMessage value)? listenMessage,
    TResult? Function(_SocketListenBooking value)? listenBooking,
    TResult? Function(SocketSendBookingStatus value)? sendBookingStatus,
    TResult? Function(SocketBroadCastDriverInfo value)? broadCastDriverInfo,
    TResult? Function(SocketBroadCastDriverLocation value)?
        broadCastDriverLocation,
    TResult? Function(_SocketBroadCastMessage value)? broadCastMessage,
  }) {
    return listenBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketConnect value)? connect,
    TResult Function(_SocketListenMessage value)? listenMessage,
    TResult Function(_SocketListenBooking value)? listenBooking,
    TResult Function(SocketSendBookingStatus value)? sendBookingStatus,
    TResult Function(SocketBroadCastDriverInfo value)? broadCastDriverInfo,
    TResult Function(SocketBroadCastDriverLocation value)?
        broadCastDriverLocation,
    TResult Function(_SocketBroadCastMessage value)? broadCastMessage,
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
abstract class _$$SocketSendBookingStatusImplCopyWith<$Res> {
  factory _$$SocketSendBookingStatusImplCopyWith(
          _$SocketSendBookingStatusImpl value,
          $Res Function(_$SocketSendBookingStatusImpl) then) =
      __$$SocketSendBookingStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BookingStatus status});
}

/// @nodoc
class __$$SocketSendBookingStatusImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$SocketSendBookingStatusImpl>
    implements _$$SocketSendBookingStatusImplCopyWith<$Res> {
  __$$SocketSendBookingStatusImplCopyWithImpl(
      _$SocketSendBookingStatusImpl _value,
      $Res Function(_$SocketSendBookingStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$SocketSendBookingStatusImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
    ));
  }
}

/// @nodoc

class _$SocketSendBookingStatusImpl implements SocketSendBookingStatus {
  const _$SocketSendBookingStatusImpl({required this.status});

  @override
  final BookingStatus status;

  @override
  String toString() {
    return 'SocketEvent.sendBookingStatus(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketSendBookingStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketSendBookingStatusImplCopyWith<_$SocketSendBookingStatusImpl>
      get copyWith => __$$SocketSendBookingStatusImplCopyWithImpl<
          _$SocketSendBookingStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() listenMessage,
    required TResult Function() listenBooking,
    required TResult Function(BookingStatus status) sendBookingStatus,
    required TResult Function(int driverId) broadCastDriverInfo,
    required TResult Function(LatLng location) broadCastDriverLocation,
    required TResult Function(Message message) broadCastMessage,
  }) {
    return sendBookingStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? listenMessage,
    TResult? Function()? listenBooking,
    TResult? Function(BookingStatus status)? sendBookingStatus,
    TResult? Function(int driverId)? broadCastDriverInfo,
    TResult? Function(LatLng location)? broadCastDriverLocation,
    TResult? Function(Message message)? broadCastMessage,
  }) {
    return sendBookingStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? listenMessage,
    TResult Function()? listenBooking,
    TResult Function(BookingStatus status)? sendBookingStatus,
    TResult Function(int driverId)? broadCastDriverInfo,
    TResult Function(LatLng location)? broadCastDriverLocation,
    TResult Function(Message message)? broadCastMessage,
    required TResult orElse(),
  }) {
    if (sendBookingStatus != null) {
      return sendBookingStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketConnect value) connect,
    required TResult Function(_SocketListenMessage value) listenMessage,
    required TResult Function(_SocketListenBooking value) listenBooking,
    required TResult Function(SocketSendBookingStatus value) sendBookingStatus,
    required TResult Function(SocketBroadCastDriverInfo value)
        broadCastDriverInfo,
    required TResult Function(SocketBroadCastDriverLocation value)
        broadCastDriverLocation,
    required TResult Function(_SocketBroadCastMessage value) broadCastMessage,
  }) {
    return sendBookingStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketConnect value)? connect,
    TResult? Function(_SocketListenMessage value)? listenMessage,
    TResult? Function(_SocketListenBooking value)? listenBooking,
    TResult? Function(SocketSendBookingStatus value)? sendBookingStatus,
    TResult? Function(SocketBroadCastDriverInfo value)? broadCastDriverInfo,
    TResult? Function(SocketBroadCastDriverLocation value)?
        broadCastDriverLocation,
    TResult? Function(_SocketBroadCastMessage value)? broadCastMessage,
  }) {
    return sendBookingStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketConnect value)? connect,
    TResult Function(_SocketListenMessage value)? listenMessage,
    TResult Function(_SocketListenBooking value)? listenBooking,
    TResult Function(SocketSendBookingStatus value)? sendBookingStatus,
    TResult Function(SocketBroadCastDriverInfo value)? broadCastDriverInfo,
    TResult Function(SocketBroadCastDriverLocation value)?
        broadCastDriverLocation,
    TResult Function(_SocketBroadCastMessage value)? broadCastMessage,
    required TResult orElse(),
  }) {
    if (sendBookingStatus != null) {
      return sendBookingStatus(this);
    }
    return orElse();
  }
}

abstract class SocketSendBookingStatus implements SocketEvent {
  const factory SocketSendBookingStatus({required final BookingStatus status}) =
      _$SocketSendBookingStatusImpl;

  BookingStatus get status;
  @JsonKey(ignore: true)
  _$$SocketSendBookingStatusImplCopyWith<_$SocketSendBookingStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketBroadCastDriverInfoImplCopyWith<$Res> {
  factory _$$SocketBroadCastDriverInfoImplCopyWith(
          _$SocketBroadCastDriverInfoImpl value,
          $Res Function(_$SocketBroadCastDriverInfoImpl) then) =
      __$$SocketBroadCastDriverInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int driverId});
}

/// @nodoc
class __$$SocketBroadCastDriverInfoImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$SocketBroadCastDriverInfoImpl>
    implements _$$SocketBroadCastDriverInfoImplCopyWith<$Res> {
  __$$SocketBroadCastDriverInfoImplCopyWithImpl(
      _$SocketBroadCastDriverInfoImpl _value,
      $Res Function(_$SocketBroadCastDriverInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverId = null,
  }) {
    return _then(_$SocketBroadCastDriverInfoImpl(
      driverId: null == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SocketBroadCastDriverInfoImpl implements SocketBroadCastDriverInfo {
  const _$SocketBroadCastDriverInfoImpl({required this.driverId});

  @override
  final int driverId;

  @override
  String toString() {
    return 'SocketEvent.broadCastDriverInfo(driverId: $driverId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketBroadCastDriverInfoImpl &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driverId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketBroadCastDriverInfoImplCopyWith<_$SocketBroadCastDriverInfoImpl>
      get copyWith => __$$SocketBroadCastDriverInfoImplCopyWithImpl<
          _$SocketBroadCastDriverInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() listenMessage,
    required TResult Function() listenBooking,
    required TResult Function(BookingStatus status) sendBookingStatus,
    required TResult Function(int driverId) broadCastDriverInfo,
    required TResult Function(LatLng location) broadCastDriverLocation,
    required TResult Function(Message message) broadCastMessage,
  }) {
    return broadCastDriverInfo(driverId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? listenMessage,
    TResult? Function()? listenBooking,
    TResult? Function(BookingStatus status)? sendBookingStatus,
    TResult? Function(int driverId)? broadCastDriverInfo,
    TResult? Function(LatLng location)? broadCastDriverLocation,
    TResult? Function(Message message)? broadCastMessage,
  }) {
    return broadCastDriverInfo?.call(driverId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? listenMessage,
    TResult Function()? listenBooking,
    TResult Function(BookingStatus status)? sendBookingStatus,
    TResult Function(int driverId)? broadCastDriverInfo,
    TResult Function(LatLng location)? broadCastDriverLocation,
    TResult Function(Message message)? broadCastMessage,
    required TResult orElse(),
  }) {
    if (broadCastDriverInfo != null) {
      return broadCastDriverInfo(driverId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketConnect value) connect,
    required TResult Function(_SocketListenMessage value) listenMessage,
    required TResult Function(_SocketListenBooking value) listenBooking,
    required TResult Function(SocketSendBookingStatus value) sendBookingStatus,
    required TResult Function(SocketBroadCastDriverInfo value)
        broadCastDriverInfo,
    required TResult Function(SocketBroadCastDriverLocation value)
        broadCastDriverLocation,
    required TResult Function(_SocketBroadCastMessage value) broadCastMessage,
  }) {
    return broadCastDriverInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketConnect value)? connect,
    TResult? Function(_SocketListenMessage value)? listenMessage,
    TResult? Function(_SocketListenBooking value)? listenBooking,
    TResult? Function(SocketSendBookingStatus value)? sendBookingStatus,
    TResult? Function(SocketBroadCastDriverInfo value)? broadCastDriverInfo,
    TResult? Function(SocketBroadCastDriverLocation value)?
        broadCastDriverLocation,
    TResult? Function(_SocketBroadCastMessage value)? broadCastMessage,
  }) {
    return broadCastDriverInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketConnect value)? connect,
    TResult Function(_SocketListenMessage value)? listenMessage,
    TResult Function(_SocketListenBooking value)? listenBooking,
    TResult Function(SocketSendBookingStatus value)? sendBookingStatus,
    TResult Function(SocketBroadCastDriverInfo value)? broadCastDriverInfo,
    TResult Function(SocketBroadCastDriverLocation value)?
        broadCastDriverLocation,
    TResult Function(_SocketBroadCastMessage value)? broadCastMessage,
    required TResult orElse(),
  }) {
    if (broadCastDriverInfo != null) {
      return broadCastDriverInfo(this);
    }
    return orElse();
  }
}

abstract class SocketBroadCastDriverInfo implements SocketEvent {
  const factory SocketBroadCastDriverInfo({required final int driverId}) =
      _$SocketBroadCastDriverInfoImpl;

  int get driverId;
  @JsonKey(ignore: true)
  _$$SocketBroadCastDriverInfoImplCopyWith<_$SocketBroadCastDriverInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketBroadCastDriverLocationImplCopyWith<$Res> {
  factory _$$SocketBroadCastDriverLocationImplCopyWith(
          _$SocketBroadCastDriverLocationImpl value,
          $Res Function(_$SocketBroadCastDriverLocationImpl) then) =
      __$$SocketBroadCastDriverLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng location});
}

/// @nodoc
class __$$SocketBroadCastDriverLocationImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$SocketBroadCastDriverLocationImpl>
    implements _$$SocketBroadCastDriverLocationImplCopyWith<$Res> {
  __$$SocketBroadCastDriverLocationImplCopyWithImpl(
      _$SocketBroadCastDriverLocationImpl _value,
      $Res Function(_$SocketBroadCastDriverLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$SocketBroadCastDriverLocationImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$SocketBroadCastDriverLocationImpl
    implements SocketBroadCastDriverLocation {
  const _$SocketBroadCastDriverLocationImpl({required this.location});

  @override
  final LatLng location;

  @override
  String toString() {
    return 'SocketEvent.broadCastDriverLocation(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketBroadCastDriverLocationImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketBroadCastDriverLocationImplCopyWith<
          _$SocketBroadCastDriverLocationImpl>
      get copyWith => __$$SocketBroadCastDriverLocationImplCopyWithImpl<
          _$SocketBroadCastDriverLocationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() listenMessage,
    required TResult Function() listenBooking,
    required TResult Function(BookingStatus status) sendBookingStatus,
    required TResult Function(int driverId) broadCastDriverInfo,
    required TResult Function(LatLng location) broadCastDriverLocation,
    required TResult Function(Message message) broadCastMessage,
  }) {
    return broadCastDriverLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? listenMessage,
    TResult? Function()? listenBooking,
    TResult? Function(BookingStatus status)? sendBookingStatus,
    TResult? Function(int driverId)? broadCastDriverInfo,
    TResult? Function(LatLng location)? broadCastDriverLocation,
    TResult? Function(Message message)? broadCastMessage,
  }) {
    return broadCastDriverLocation?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? listenMessage,
    TResult Function()? listenBooking,
    TResult Function(BookingStatus status)? sendBookingStatus,
    TResult Function(int driverId)? broadCastDriverInfo,
    TResult Function(LatLng location)? broadCastDriverLocation,
    TResult Function(Message message)? broadCastMessage,
    required TResult orElse(),
  }) {
    if (broadCastDriverLocation != null) {
      return broadCastDriverLocation(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocketConnect value) connect,
    required TResult Function(_SocketListenMessage value) listenMessage,
    required TResult Function(_SocketListenBooking value) listenBooking,
    required TResult Function(SocketSendBookingStatus value) sendBookingStatus,
    required TResult Function(SocketBroadCastDriverInfo value)
        broadCastDriverInfo,
    required TResult Function(SocketBroadCastDriverLocation value)
        broadCastDriverLocation,
    required TResult Function(_SocketBroadCastMessage value) broadCastMessage,
  }) {
    return broadCastDriverLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketConnect value)? connect,
    TResult? Function(_SocketListenMessage value)? listenMessage,
    TResult? Function(_SocketListenBooking value)? listenBooking,
    TResult? Function(SocketSendBookingStatus value)? sendBookingStatus,
    TResult? Function(SocketBroadCastDriverInfo value)? broadCastDriverInfo,
    TResult? Function(SocketBroadCastDriverLocation value)?
        broadCastDriverLocation,
    TResult? Function(_SocketBroadCastMessage value)? broadCastMessage,
  }) {
    return broadCastDriverLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketConnect value)? connect,
    TResult Function(_SocketListenMessage value)? listenMessage,
    TResult Function(_SocketListenBooking value)? listenBooking,
    TResult Function(SocketSendBookingStatus value)? sendBookingStatus,
    TResult Function(SocketBroadCastDriverInfo value)? broadCastDriverInfo,
    TResult Function(SocketBroadCastDriverLocation value)?
        broadCastDriverLocation,
    TResult Function(_SocketBroadCastMessage value)? broadCastMessage,
    required TResult orElse(),
  }) {
    if (broadCastDriverLocation != null) {
      return broadCastDriverLocation(this);
    }
    return orElse();
  }
}

abstract class SocketBroadCastDriverLocation implements SocketEvent {
  const factory SocketBroadCastDriverLocation(
      {required final LatLng location}) = _$SocketBroadCastDriverLocationImpl;

  LatLng get location;
  @JsonKey(ignore: true)
  _$$SocketBroadCastDriverLocationImplCopyWith<
          _$SocketBroadCastDriverLocationImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function() listenMessage,
    required TResult Function() listenBooking,
    required TResult Function(BookingStatus status) sendBookingStatus,
    required TResult Function(int driverId) broadCastDriverInfo,
    required TResult Function(LatLng location) broadCastDriverLocation,
    required TResult Function(Message message) broadCastMessage,
  }) {
    return broadCastMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? listenMessage,
    TResult? Function()? listenBooking,
    TResult? Function(BookingStatus status)? sendBookingStatus,
    TResult? Function(int driverId)? broadCastDriverInfo,
    TResult? Function(LatLng location)? broadCastDriverLocation,
    TResult? Function(Message message)? broadCastMessage,
  }) {
    return broadCastMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? listenMessage,
    TResult Function()? listenBooking,
    TResult Function(BookingStatus status)? sendBookingStatus,
    TResult Function(int driverId)? broadCastDriverInfo,
    TResult Function(LatLng location)? broadCastDriverLocation,
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
    required TResult Function(_SocketListenMessage value) listenMessage,
    required TResult Function(_SocketListenBooking value) listenBooking,
    required TResult Function(SocketSendBookingStatus value) sendBookingStatus,
    required TResult Function(SocketBroadCastDriverInfo value)
        broadCastDriverInfo,
    required TResult Function(SocketBroadCastDriverLocation value)
        broadCastDriverLocation,
    required TResult Function(_SocketBroadCastMessage value) broadCastMessage,
  }) {
    return broadCastMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocketConnect value)? connect,
    TResult? Function(_SocketListenMessage value)? listenMessage,
    TResult? Function(_SocketListenBooking value)? listenBooking,
    TResult? Function(SocketSendBookingStatus value)? sendBookingStatus,
    TResult? Function(SocketBroadCastDriverInfo value)? broadCastDriverInfo,
    TResult? Function(SocketBroadCastDriverLocation value)?
        broadCastDriverLocation,
    TResult? Function(_SocketBroadCastMessage value)? broadCastMessage,
  }) {
    return broadCastMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SocketConnect value)? connect,
    TResult Function(_SocketListenMessage value)? listenMessage,
    TResult Function(_SocketListenBooking value)? listenBooking,
    TResult Function(SocketSendBookingStatus value)? sendBookingStatus,
    TResult Function(SocketBroadCastDriverInfo value)? broadCastDriverInfo,
    TResult Function(SocketBroadCastDriverLocation value)?
        broadCastDriverLocation,
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
    required TResult Function(Message message) receivedMessage,
    required TResult Function(LatLng latLng) receivedDriverLocation,
    required TResult Function(BookingStatus bookingStatus)
        receivedBookingStatus,
    required TResult Function(int driverId) receivedDriverInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Message message)? receivedMessage,
    TResult? Function(LatLng latLng)? receivedDriverLocation,
    TResult? Function(BookingStatus bookingStatus)? receivedBookingStatus,
    TResult? Function(int driverId)? receivedDriverInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Message message)? receivedMessage,
    TResult Function(LatLng latLng)? receivedDriverLocation,
    TResult Function(BookingStatus bookingStatus)? receivedBookingStatus,
    TResult Function(int driverId)? receivedDriverInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocketInitial value) initial,
    required TResult Function(SocketReceivedMessage value) receivedMessage,
    required TResult Function(SocketReceivedDriverLocation value)
        receivedDriverLocation,
    required TResult Function(SocketReceivedBookingStatus value)
        receivedBookingStatus,
    required TResult Function(SocketReceivedDriverInfo value)
        receivedDriverInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketInitial value)? initial,
    TResult? Function(SocketReceivedMessage value)? receivedMessage,
    TResult? Function(SocketReceivedDriverLocation value)?
        receivedDriverLocation,
    TResult? Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult? Function(SocketReceivedDriverInfo value)? receivedDriverInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketInitial value)? initial,
    TResult Function(SocketReceivedMessage value)? receivedMessage,
    TResult Function(SocketReceivedDriverLocation value)?
        receivedDriverLocation,
    TResult Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult Function(SocketReceivedDriverInfo value)? receivedDriverInfo,
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
    required TResult Function(Message message) receivedMessage,
    required TResult Function(LatLng latLng) receivedDriverLocation,
    required TResult Function(BookingStatus bookingStatus)
        receivedBookingStatus,
    required TResult Function(int driverId) receivedDriverInfo,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Message message)? receivedMessage,
    TResult? Function(LatLng latLng)? receivedDriverLocation,
    TResult? Function(BookingStatus bookingStatus)? receivedBookingStatus,
    TResult? Function(int driverId)? receivedDriverInfo,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Message message)? receivedMessage,
    TResult Function(LatLng latLng)? receivedDriverLocation,
    TResult Function(BookingStatus bookingStatus)? receivedBookingStatus,
    TResult Function(int driverId)? receivedDriverInfo,
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
    required TResult Function(SocketReceivedBookingStatus value)
        receivedBookingStatus,
    required TResult Function(SocketReceivedDriverInfo value)
        receivedDriverInfo,
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
    TResult? Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult? Function(SocketReceivedDriverInfo value)? receivedDriverInfo,
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
    TResult Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult Function(SocketReceivedDriverInfo value)? receivedDriverInfo,
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
    required TResult Function(Message message) receivedMessage,
    required TResult Function(LatLng latLng) receivedDriverLocation,
    required TResult Function(BookingStatus bookingStatus)
        receivedBookingStatus,
    required TResult Function(int driverId) receivedDriverInfo,
  }) {
    return receivedMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Message message)? receivedMessage,
    TResult? Function(LatLng latLng)? receivedDriverLocation,
    TResult? Function(BookingStatus bookingStatus)? receivedBookingStatus,
    TResult? Function(int driverId)? receivedDriverInfo,
  }) {
    return receivedMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Message message)? receivedMessage,
    TResult Function(LatLng latLng)? receivedDriverLocation,
    TResult Function(BookingStatus bookingStatus)? receivedBookingStatus,
    TResult Function(int driverId)? receivedDriverInfo,
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
    required TResult Function(SocketReceivedMessage value) receivedMessage,
    required TResult Function(SocketReceivedDriverLocation value)
        receivedDriverLocation,
    required TResult Function(SocketReceivedBookingStatus value)
        receivedBookingStatus,
    required TResult Function(SocketReceivedDriverInfo value)
        receivedDriverInfo,
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
    TResult? Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult? Function(SocketReceivedDriverInfo value)? receivedDriverInfo,
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
    TResult Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult Function(SocketReceivedDriverInfo value)? receivedDriverInfo,
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

/// @nodoc
abstract class _$$SocketReceivedDriverLocationImplCopyWith<$Res> {
  factory _$$SocketReceivedDriverLocationImplCopyWith(
          _$SocketReceivedDriverLocationImpl value,
          $Res Function(_$SocketReceivedDriverLocationImpl) then) =
      __$$SocketReceivedDriverLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng latLng});
}

/// @nodoc
class __$$SocketReceivedDriverLocationImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$SocketReceivedDriverLocationImpl>
    implements _$$SocketReceivedDriverLocationImplCopyWith<$Res> {
  __$$SocketReceivedDriverLocationImplCopyWithImpl(
      _$SocketReceivedDriverLocationImpl _value,
      $Res Function(_$SocketReceivedDriverLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latLng = null,
  }) {
    return _then(_$SocketReceivedDriverLocationImpl(
      latLng: null == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$SocketReceivedDriverLocationImpl
    implements SocketReceivedDriverLocation {
  const _$SocketReceivedDriverLocationImpl({required this.latLng});

  @override
  final LatLng latLng;

  @override
  String toString() {
    return 'SocketState.receivedDriverLocation(latLng: $latLng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketReceivedDriverLocationImpl &&
            (identical(other.latLng, latLng) || other.latLng == latLng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latLng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketReceivedDriverLocationImplCopyWith<
          _$SocketReceivedDriverLocationImpl>
      get copyWith => __$$SocketReceivedDriverLocationImplCopyWithImpl<
          _$SocketReceivedDriverLocationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Message message) receivedMessage,
    required TResult Function(LatLng latLng) receivedDriverLocation,
    required TResult Function(BookingStatus bookingStatus)
        receivedBookingStatus,
    required TResult Function(int driverId) receivedDriverInfo,
  }) {
    return receivedDriverLocation(latLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Message message)? receivedMessage,
    TResult? Function(LatLng latLng)? receivedDriverLocation,
    TResult? Function(BookingStatus bookingStatus)? receivedBookingStatus,
    TResult? Function(int driverId)? receivedDriverInfo,
  }) {
    return receivedDriverLocation?.call(latLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Message message)? receivedMessage,
    TResult Function(LatLng latLng)? receivedDriverLocation,
    TResult Function(BookingStatus bookingStatus)? receivedBookingStatus,
    TResult Function(int driverId)? receivedDriverInfo,
    required TResult orElse(),
  }) {
    if (receivedDriverLocation != null) {
      return receivedDriverLocation(latLng);
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
    required TResult Function(SocketReceivedBookingStatus value)
        receivedBookingStatus,
    required TResult Function(SocketReceivedDriverInfo value)
        receivedDriverInfo,
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
    TResult? Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult? Function(SocketReceivedDriverInfo value)? receivedDriverInfo,
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
    TResult Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult Function(SocketReceivedDriverInfo value)? receivedDriverInfo,
    required TResult orElse(),
  }) {
    if (receivedDriverLocation != null) {
      return receivedDriverLocation(this);
    }
    return orElse();
  }
}

abstract class SocketReceivedDriverLocation implements SocketState {
  const factory SocketReceivedDriverLocation({required final LatLng latLng}) =
      _$SocketReceivedDriverLocationImpl;

  LatLng get latLng;
  @JsonKey(ignore: true)
  _$$SocketReceivedDriverLocationImplCopyWith<
          _$SocketReceivedDriverLocationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketReceivedBookingStatusImplCopyWith<$Res> {
  factory _$$SocketReceivedBookingStatusImplCopyWith(
          _$SocketReceivedBookingStatusImpl value,
          $Res Function(_$SocketReceivedBookingStatusImpl) then) =
      __$$SocketReceivedBookingStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BookingStatus bookingStatus});
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
              as BookingStatus,
    ));
  }
}

/// @nodoc

class _$SocketReceivedBookingStatusImpl implements SocketReceivedBookingStatus {
  const _$SocketReceivedBookingStatusImpl({required this.bookingStatus});

  @override
  final BookingStatus bookingStatus;

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
    required TResult Function(Message message) receivedMessage,
    required TResult Function(LatLng latLng) receivedDriverLocation,
    required TResult Function(BookingStatus bookingStatus)
        receivedBookingStatus,
    required TResult Function(int driverId) receivedDriverInfo,
  }) {
    return receivedBookingStatus(bookingStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Message message)? receivedMessage,
    TResult? Function(LatLng latLng)? receivedDriverLocation,
    TResult? Function(BookingStatus bookingStatus)? receivedBookingStatus,
    TResult? Function(int driverId)? receivedDriverInfo,
  }) {
    return receivedBookingStatus?.call(bookingStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Message message)? receivedMessage,
    TResult Function(LatLng latLng)? receivedDriverLocation,
    TResult Function(BookingStatus bookingStatus)? receivedBookingStatus,
    TResult Function(int driverId)? receivedDriverInfo,
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
    required TResult Function(SocketReceivedMessage value) receivedMessage,
    required TResult Function(SocketReceivedDriverLocation value)
        receivedDriverLocation,
    required TResult Function(SocketReceivedBookingStatus value)
        receivedBookingStatus,
    required TResult Function(SocketReceivedDriverInfo value)
        receivedDriverInfo,
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
    TResult? Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult? Function(SocketReceivedDriverInfo value)? receivedDriverInfo,
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
    TResult Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult Function(SocketReceivedDriverInfo value)? receivedDriverInfo,
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
          {required final BookingStatus bookingStatus}) =
      _$SocketReceivedBookingStatusImpl;

  BookingStatus get bookingStatus;
  @JsonKey(ignore: true)
  _$$SocketReceivedBookingStatusImplCopyWith<_$SocketReceivedBookingStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketReceivedDriverInfoImplCopyWith<$Res> {
  factory _$$SocketReceivedDriverInfoImplCopyWith(
          _$SocketReceivedDriverInfoImpl value,
          $Res Function(_$SocketReceivedDriverInfoImpl) then) =
      __$$SocketReceivedDriverInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int driverId});
}

/// @nodoc
class __$$SocketReceivedDriverInfoImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$SocketReceivedDriverInfoImpl>
    implements _$$SocketReceivedDriverInfoImplCopyWith<$Res> {
  __$$SocketReceivedDriverInfoImplCopyWithImpl(
      _$SocketReceivedDriverInfoImpl _value,
      $Res Function(_$SocketReceivedDriverInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverId = null,
  }) {
    return _then(_$SocketReceivedDriverInfoImpl(
      driverId: null == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SocketReceivedDriverInfoImpl implements SocketReceivedDriverInfo {
  const _$SocketReceivedDriverInfoImpl({required this.driverId});

  @override
  final int driverId;

  @override
  String toString() {
    return 'SocketState.receivedDriverInfo(driverId: $driverId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketReceivedDriverInfoImpl &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driverId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketReceivedDriverInfoImplCopyWith<_$SocketReceivedDriverInfoImpl>
      get copyWith => __$$SocketReceivedDriverInfoImplCopyWithImpl<
          _$SocketReceivedDriverInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Message message) receivedMessage,
    required TResult Function(LatLng latLng) receivedDriverLocation,
    required TResult Function(BookingStatus bookingStatus)
        receivedBookingStatus,
    required TResult Function(int driverId) receivedDriverInfo,
  }) {
    return receivedDriverInfo(driverId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Message message)? receivedMessage,
    TResult? Function(LatLng latLng)? receivedDriverLocation,
    TResult? Function(BookingStatus bookingStatus)? receivedBookingStatus,
    TResult? Function(int driverId)? receivedDriverInfo,
  }) {
    return receivedDriverInfo?.call(driverId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Message message)? receivedMessage,
    TResult Function(LatLng latLng)? receivedDriverLocation,
    TResult Function(BookingStatus bookingStatus)? receivedBookingStatus,
    TResult Function(int driverId)? receivedDriverInfo,
    required TResult orElse(),
  }) {
    if (receivedDriverInfo != null) {
      return receivedDriverInfo(driverId);
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
    required TResult Function(SocketReceivedBookingStatus value)
        receivedBookingStatus,
    required TResult Function(SocketReceivedDriverInfo value)
        receivedDriverInfo,
  }) {
    return receivedDriverInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocketInitial value)? initial,
    TResult? Function(SocketReceivedMessage value)? receivedMessage,
    TResult? Function(SocketReceivedDriverLocation value)?
        receivedDriverLocation,
    TResult? Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult? Function(SocketReceivedDriverInfo value)? receivedDriverInfo,
  }) {
    return receivedDriverInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocketInitial value)? initial,
    TResult Function(SocketReceivedMessage value)? receivedMessage,
    TResult Function(SocketReceivedDriverLocation value)?
        receivedDriverLocation,
    TResult Function(SocketReceivedBookingStatus value)? receivedBookingStatus,
    TResult Function(SocketReceivedDriverInfo value)? receivedDriverInfo,
    required TResult orElse(),
  }) {
    if (receivedDriverInfo != null) {
      return receivedDriverInfo(this);
    }
    return orElse();
  }
}

abstract class SocketReceivedDriverInfo implements SocketState {
  const factory SocketReceivedDriverInfo({required final int driverId}) =
      _$SocketReceivedDriverInfoImpl;

  int get driverId;
  @JsonKey(ignore: true)
  _$$SocketReceivedDriverInfoImplCopyWith<_$SocketReceivedDriverInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
