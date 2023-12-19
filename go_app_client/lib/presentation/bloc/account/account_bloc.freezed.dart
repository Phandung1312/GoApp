// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountLoad value) load,
    required TResult Function(AccountLogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountLoad value)? load,
    TResult? Function(AccountLogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountLoad value)? load,
    TResult Function(AccountLogOut value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res, AccountEvent>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent>
    implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccountLoadImplCopyWith<$Res> {
  factory _$$AccountLoadImplCopyWith(
          _$AccountLoadImpl value, $Res Function(_$AccountLoadImpl) then) =
      __$$AccountLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountLoadImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$AccountLoadImpl>
    implements _$$AccountLoadImplCopyWith<$Res> {
  __$$AccountLoadImplCopyWithImpl(
      _$AccountLoadImpl _value, $Res Function(_$AccountLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountLoadImpl implements AccountLoad {
  const _$AccountLoadImpl();

  @override
  String toString() {
    return 'AccountEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() logOut,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? logOut,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountLoad value) load,
    required TResult Function(AccountLogOut value) logOut,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountLoad value)? load,
    TResult? Function(AccountLogOut value)? logOut,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountLoad value)? load,
    TResult Function(AccountLogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class AccountLoad implements AccountEvent {
  const factory AccountLoad() = _$AccountLoadImpl;
}

/// @nodoc
abstract class _$$AccountLogOutImplCopyWith<$Res> {
  factory _$$AccountLogOutImplCopyWith(
          _$AccountLogOutImpl value, $Res Function(_$AccountLogOutImpl) then) =
      __$$AccountLogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountLogOutImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$AccountLogOutImpl>
    implements _$$AccountLogOutImplCopyWith<$Res> {
  __$$AccountLogOutImplCopyWithImpl(
      _$AccountLogOutImpl _value, $Res Function(_$AccountLogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountLogOutImpl implements AccountLogOut {
  const _$AccountLogOutImpl();

  @override
  String toString() {
    return 'AccountEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountLogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountLoad value) load,
    required TResult Function(AccountLogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountLoad value)? load,
    TResult? Function(AccountLogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountLoad value)? load,
    TResult Function(AccountLogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class AccountLogOut implements AccountEvent {
  const factory AccountLogOut() = _$AccountLogOutImpl;
}

/// @nodoc
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClientInfo clientInfo) loadSuccess,
    required TResult Function() loading,
    required TResult Function() logOutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ClientInfo clientInfo)? loadSuccess,
    TResult? Function()? loading,
    TResult? Function()? logOutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClientInfo clientInfo)? loadSuccess,
    TResult Function()? loading,
    TResult Function()? logOutSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoadSuccess value) loadSuccess,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountLogOutSuccess value) logOutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoadSuccess value)? loadSuccess,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(AccountLogOutSuccess value)? logOutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoadSuccess value)? loadSuccess,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountLogOutSuccess value)? logOutSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccountInitialImplCopyWith<$Res> {
  factory _$$AccountInitialImplCopyWith(_$AccountInitialImpl value,
          $Res Function(_$AccountInitialImpl) then) =
      __$$AccountInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountInitialImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountInitialImpl>
    implements _$$AccountInitialImplCopyWith<$Res> {
  __$$AccountInitialImplCopyWithImpl(
      _$AccountInitialImpl _value, $Res Function(_$AccountInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountInitialImpl implements AccountInitial {
  const _$AccountInitialImpl();

  @override
  String toString() {
    return 'AccountState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClientInfo clientInfo) loadSuccess,
    required TResult Function() loading,
    required TResult Function() logOutSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ClientInfo clientInfo)? loadSuccess,
    TResult? Function()? loading,
    TResult? Function()? logOutSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClientInfo clientInfo)? loadSuccess,
    TResult Function()? loading,
    TResult Function()? logOutSuccess,
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
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoadSuccess value) loadSuccess,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountLogOutSuccess value) logOutSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoadSuccess value)? loadSuccess,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(AccountLogOutSuccess value)? logOutSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoadSuccess value)? loadSuccess,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountLogOutSuccess value)? logOutSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AccountInitial implements AccountState {
  const factory AccountInitial() = _$AccountInitialImpl;
}

/// @nodoc
abstract class _$$AccountLoadSuccessImplCopyWith<$Res> {
  factory _$$AccountLoadSuccessImplCopyWith(_$AccountLoadSuccessImpl value,
          $Res Function(_$AccountLoadSuccessImpl) then) =
      __$$AccountLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClientInfo clientInfo});

  $ClientInfoCopyWith<$Res> get clientInfo;
}

/// @nodoc
class __$$AccountLoadSuccessImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountLoadSuccessImpl>
    implements _$$AccountLoadSuccessImplCopyWith<$Res> {
  __$$AccountLoadSuccessImplCopyWithImpl(_$AccountLoadSuccessImpl _value,
      $Res Function(_$AccountLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientInfo = null,
  }) {
    return _then(_$AccountLoadSuccessImpl(
      clientInfo: null == clientInfo
          ? _value.clientInfo
          : clientInfo // ignore: cast_nullable_to_non_nullable
              as ClientInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientInfoCopyWith<$Res> get clientInfo {
    return $ClientInfoCopyWith<$Res>(_value.clientInfo, (value) {
      return _then(_value.copyWith(clientInfo: value));
    });
  }
}

/// @nodoc

class _$AccountLoadSuccessImpl implements AccountLoadSuccess {
  const _$AccountLoadSuccessImpl({required this.clientInfo});

  @override
  final ClientInfo clientInfo;

  @override
  String toString() {
    return 'AccountState.loadSuccess(clientInfo: $clientInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountLoadSuccessImpl &&
            (identical(other.clientInfo, clientInfo) ||
                other.clientInfo == clientInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountLoadSuccessImplCopyWith<_$AccountLoadSuccessImpl> get copyWith =>
      __$$AccountLoadSuccessImplCopyWithImpl<_$AccountLoadSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClientInfo clientInfo) loadSuccess,
    required TResult Function() loading,
    required TResult Function() logOutSuccess,
  }) {
    return loadSuccess(clientInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ClientInfo clientInfo)? loadSuccess,
    TResult? Function()? loading,
    TResult? Function()? logOutSuccess,
  }) {
    return loadSuccess?.call(clientInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClientInfo clientInfo)? loadSuccess,
    TResult Function()? loading,
    TResult Function()? logOutSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(clientInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoadSuccess value) loadSuccess,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountLogOutSuccess value) logOutSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoadSuccess value)? loadSuccess,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(AccountLogOutSuccess value)? logOutSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoadSuccess value)? loadSuccess,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountLogOutSuccess value)? logOutSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class AccountLoadSuccess implements AccountState {
  const factory AccountLoadSuccess({required final ClientInfo clientInfo}) =
      _$AccountLoadSuccessImpl;

  ClientInfo get clientInfo;
  @JsonKey(ignore: true)
  _$$AccountLoadSuccessImplCopyWith<_$AccountLoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountLoadingImplCopyWith<$Res> {
  factory _$$AccountLoadingImplCopyWith(_$AccountLoadingImpl value,
          $Res Function(_$AccountLoadingImpl) then) =
      __$$AccountLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountLoadingImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountLoadingImpl>
    implements _$$AccountLoadingImplCopyWith<$Res> {
  __$$AccountLoadingImplCopyWithImpl(
      _$AccountLoadingImpl _value, $Res Function(_$AccountLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountLoadingImpl implements AccountLoading {
  const _$AccountLoadingImpl();

  @override
  String toString() {
    return 'AccountState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClientInfo clientInfo) loadSuccess,
    required TResult Function() loading,
    required TResult Function() logOutSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ClientInfo clientInfo)? loadSuccess,
    TResult? Function()? loading,
    TResult? Function()? logOutSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClientInfo clientInfo)? loadSuccess,
    TResult Function()? loading,
    TResult Function()? logOutSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoadSuccess value) loadSuccess,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountLogOutSuccess value) logOutSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoadSuccess value)? loadSuccess,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(AccountLogOutSuccess value)? logOutSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoadSuccess value)? loadSuccess,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountLogOutSuccess value)? logOutSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AccountLoading implements AccountState {
  const factory AccountLoading() = _$AccountLoadingImpl;
}

/// @nodoc
abstract class _$$AccountLogOutSuccessImplCopyWith<$Res> {
  factory _$$AccountLogOutSuccessImplCopyWith(_$AccountLogOutSuccessImpl value,
          $Res Function(_$AccountLogOutSuccessImpl) then) =
      __$$AccountLogOutSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountLogOutSuccessImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountLogOutSuccessImpl>
    implements _$$AccountLogOutSuccessImplCopyWith<$Res> {
  __$$AccountLogOutSuccessImplCopyWithImpl(_$AccountLogOutSuccessImpl _value,
      $Res Function(_$AccountLogOutSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountLogOutSuccessImpl implements AccountLogOutSuccess {
  const _$AccountLogOutSuccessImpl();

  @override
  String toString() {
    return 'AccountState.logOutSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountLogOutSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClientInfo clientInfo) loadSuccess,
    required TResult Function() loading,
    required TResult Function() logOutSuccess,
  }) {
    return logOutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ClientInfo clientInfo)? loadSuccess,
    TResult? Function()? loading,
    TResult? Function()? logOutSuccess,
  }) {
    return logOutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClientInfo clientInfo)? loadSuccess,
    TResult Function()? loading,
    TResult Function()? logOutSuccess,
    required TResult orElse(),
  }) {
    if (logOutSuccess != null) {
      return logOutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoadSuccess value) loadSuccess,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountLogOutSuccess value) logOutSuccess,
  }) {
    return logOutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoadSuccess value)? loadSuccess,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(AccountLogOutSuccess value)? logOutSuccess,
  }) {
    return logOutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoadSuccess value)? loadSuccess,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountLogOutSuccess value)? logOutSuccess,
    required TResult orElse(),
  }) {
    if (logOutSuccess != null) {
      return logOutSuccess(this);
    }
    return orElse();
  }
}

abstract class AccountLogOutSuccess implements AccountState {
  const factory AccountLogOutSuccess() = _$AccountLogOutSuccessImpl;
}
