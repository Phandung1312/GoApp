// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryDetailEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) loadHistory,
    required TResult Function(int id) loadDriverInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? loadHistory,
    TResult? Function(int id)? loadDriverInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? loadHistory,
    TResult Function(int id)? loadDriverInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryDetailLoadHistory value) loadHistory,
    required TResult Function(HistoryDetailLoadDriverInfo value) loadDriverInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryDetailLoadHistory value)? loadHistory,
    TResult? Function(HistoryDetailLoadDriverInfo value)? loadDriverInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryDetailLoadHistory value)? loadHistory,
    TResult Function(HistoryDetailLoadDriverInfo value)? loadDriverInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryDetailEventCopyWith<HistoryDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryDetailEventCopyWith<$Res> {
  factory $HistoryDetailEventCopyWith(
          HistoryDetailEvent value, $Res Function(HistoryDetailEvent) then) =
      _$HistoryDetailEventCopyWithImpl<$Res, HistoryDetailEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$HistoryDetailEventCopyWithImpl<$Res, $Val extends HistoryDetailEvent>
    implements $HistoryDetailEventCopyWith<$Res> {
  _$HistoryDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryDetailLoadHistoryImplCopyWith<$Res>
    implements $HistoryDetailEventCopyWith<$Res> {
  factory _$$HistoryDetailLoadHistoryImplCopyWith(
          _$HistoryDetailLoadHistoryImpl value,
          $Res Function(_$HistoryDetailLoadHistoryImpl) then) =
      __$$HistoryDetailLoadHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$HistoryDetailLoadHistoryImplCopyWithImpl<$Res>
    extends _$HistoryDetailEventCopyWithImpl<$Res,
        _$HistoryDetailLoadHistoryImpl>
    implements _$$HistoryDetailLoadHistoryImplCopyWith<$Res> {
  __$$HistoryDetailLoadHistoryImplCopyWithImpl(
      _$HistoryDetailLoadHistoryImpl _value,
      $Res Function(_$HistoryDetailLoadHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$HistoryDetailLoadHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HistoryDetailLoadHistoryImpl implements HistoryDetailLoadHistory {
  const _$HistoryDetailLoadHistoryImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'HistoryDetailEvent.loadHistory(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryDetailLoadHistoryImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryDetailLoadHistoryImplCopyWith<_$HistoryDetailLoadHistoryImpl>
      get copyWith => __$$HistoryDetailLoadHistoryImplCopyWithImpl<
          _$HistoryDetailLoadHistoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) loadHistory,
    required TResult Function(int id) loadDriverInfo,
  }) {
    return loadHistory(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? loadHistory,
    TResult? Function(int id)? loadDriverInfo,
  }) {
    return loadHistory?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? loadHistory,
    TResult Function(int id)? loadDriverInfo,
    required TResult orElse(),
  }) {
    if (loadHistory != null) {
      return loadHistory(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryDetailLoadHistory value) loadHistory,
    required TResult Function(HistoryDetailLoadDriverInfo value) loadDriverInfo,
  }) {
    return loadHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryDetailLoadHistory value)? loadHistory,
    TResult? Function(HistoryDetailLoadDriverInfo value)? loadDriverInfo,
  }) {
    return loadHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryDetailLoadHistory value)? loadHistory,
    TResult Function(HistoryDetailLoadDriverInfo value)? loadDriverInfo,
    required TResult orElse(),
  }) {
    if (loadHistory != null) {
      return loadHistory(this);
    }
    return orElse();
  }
}

abstract class HistoryDetailLoadHistory implements HistoryDetailEvent {
  const factory HistoryDetailLoadHistory({required final int id}) =
      _$HistoryDetailLoadHistoryImpl;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$HistoryDetailLoadHistoryImplCopyWith<_$HistoryDetailLoadHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryDetailLoadDriverInfoImplCopyWith<$Res>
    implements $HistoryDetailEventCopyWith<$Res> {
  factory _$$HistoryDetailLoadDriverInfoImplCopyWith(
          _$HistoryDetailLoadDriverInfoImpl value,
          $Res Function(_$HistoryDetailLoadDriverInfoImpl) then) =
      __$$HistoryDetailLoadDriverInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$HistoryDetailLoadDriverInfoImplCopyWithImpl<$Res>
    extends _$HistoryDetailEventCopyWithImpl<$Res,
        _$HistoryDetailLoadDriverInfoImpl>
    implements _$$HistoryDetailLoadDriverInfoImplCopyWith<$Res> {
  __$$HistoryDetailLoadDriverInfoImplCopyWithImpl(
      _$HistoryDetailLoadDriverInfoImpl _value,
      $Res Function(_$HistoryDetailLoadDriverInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$HistoryDetailLoadDriverInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HistoryDetailLoadDriverInfoImpl implements HistoryDetailLoadDriverInfo {
  const _$HistoryDetailLoadDriverInfoImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'HistoryDetailEvent.loadDriverInfo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryDetailLoadDriverInfoImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryDetailLoadDriverInfoImplCopyWith<_$HistoryDetailLoadDriverInfoImpl>
      get copyWith => __$$HistoryDetailLoadDriverInfoImplCopyWithImpl<
          _$HistoryDetailLoadDriverInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) loadHistory,
    required TResult Function(int id) loadDriverInfo,
  }) {
    return loadDriverInfo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? loadHistory,
    TResult? Function(int id)? loadDriverInfo,
  }) {
    return loadDriverInfo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? loadHistory,
    TResult Function(int id)? loadDriverInfo,
    required TResult orElse(),
  }) {
    if (loadDriverInfo != null) {
      return loadDriverInfo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryDetailLoadHistory value) loadHistory,
    required TResult Function(HistoryDetailLoadDriverInfo value) loadDriverInfo,
  }) {
    return loadDriverInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryDetailLoadHistory value)? loadHistory,
    TResult? Function(HistoryDetailLoadDriverInfo value)? loadDriverInfo,
  }) {
    return loadDriverInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryDetailLoadHistory value)? loadHistory,
    TResult Function(HistoryDetailLoadDriverInfo value)? loadDriverInfo,
    required TResult orElse(),
  }) {
    if (loadDriverInfo != null) {
      return loadDriverInfo(this);
    }
    return orElse();
  }
}

abstract class HistoryDetailLoadDriverInfo implements HistoryDetailEvent {
  const factory HistoryDetailLoadDriverInfo({required final int id}) =
      _$HistoryDetailLoadDriverInfoImpl;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$HistoryDetailLoadDriverInfoImplCopyWith<_$HistoryDetailLoadDriverInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(History history) loadSuccess,
    required TResult Function(DriverInfo driverInfo) loadDriverSuccess,
    required TResult Function() loadingDriver,
    required TResult Function() loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(History history)? loadSuccess,
    TResult? Function(DriverInfo driverInfo)? loadDriverSuccess,
    TResult? Function()? loadingDriver,
    TResult? Function()? loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(History history)? loadSuccess,
    TResult Function(DriverInfo driverInfo)? loadDriverSuccess,
    TResult Function()? loadingDriver,
    TResult Function()? loadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryDetailInitial value) initial,
    required TResult Function(HistoryDetailLoading value) loading,
    required TResult Function(HistoryDetailLoadSuccess value) loadSuccess,
    required TResult Function(HistoryDetailLoadDriverSuccess value)
        loadDriverSuccess,
    required TResult Function(HistoryDetailLoadingDriver value) loadingDriver,
    required TResult Function(HistoryDetailLoadError value) loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryDetailInitial value)? initial,
    TResult? Function(HistoryDetailLoading value)? loading,
    TResult? Function(HistoryDetailLoadSuccess value)? loadSuccess,
    TResult? Function(HistoryDetailLoadDriverSuccess value)? loadDriverSuccess,
    TResult? Function(HistoryDetailLoadingDriver value)? loadingDriver,
    TResult? Function(HistoryDetailLoadError value)? loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryDetailInitial value)? initial,
    TResult Function(HistoryDetailLoading value)? loading,
    TResult Function(HistoryDetailLoadSuccess value)? loadSuccess,
    TResult Function(HistoryDetailLoadDriverSuccess value)? loadDriverSuccess,
    TResult Function(HistoryDetailLoadingDriver value)? loadingDriver,
    TResult Function(HistoryDetailLoadError value)? loadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryDetailStateCopyWith<$Res> {
  factory $HistoryDetailStateCopyWith(
          HistoryDetailState value, $Res Function(HistoryDetailState) then) =
      _$HistoryDetailStateCopyWithImpl<$Res, HistoryDetailState>;
}

/// @nodoc
class _$HistoryDetailStateCopyWithImpl<$Res, $Val extends HistoryDetailState>
    implements $HistoryDetailStateCopyWith<$Res> {
  _$HistoryDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HistoryDetailInitialImplCopyWith<$Res> {
  factory _$$HistoryDetailInitialImplCopyWith(_$HistoryDetailInitialImpl value,
          $Res Function(_$HistoryDetailInitialImpl) then) =
      __$$HistoryDetailInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryDetailInitialImplCopyWithImpl<$Res>
    extends _$HistoryDetailStateCopyWithImpl<$Res, _$HistoryDetailInitialImpl>
    implements _$$HistoryDetailInitialImplCopyWith<$Res> {
  __$$HistoryDetailInitialImplCopyWithImpl(_$HistoryDetailInitialImpl _value,
      $Res Function(_$HistoryDetailInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HistoryDetailInitialImpl implements HistoryDetailInitial {
  const _$HistoryDetailInitialImpl();

  @override
  String toString() {
    return 'HistoryDetailState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryDetailInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(History history) loadSuccess,
    required TResult Function(DriverInfo driverInfo) loadDriverSuccess,
    required TResult Function() loadingDriver,
    required TResult Function() loadError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(History history)? loadSuccess,
    TResult? Function(DriverInfo driverInfo)? loadDriverSuccess,
    TResult? Function()? loadingDriver,
    TResult? Function()? loadError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(History history)? loadSuccess,
    TResult Function(DriverInfo driverInfo)? loadDriverSuccess,
    TResult Function()? loadingDriver,
    TResult Function()? loadError,
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
    required TResult Function(HistoryDetailInitial value) initial,
    required TResult Function(HistoryDetailLoading value) loading,
    required TResult Function(HistoryDetailLoadSuccess value) loadSuccess,
    required TResult Function(HistoryDetailLoadDriverSuccess value)
        loadDriverSuccess,
    required TResult Function(HistoryDetailLoadingDriver value) loadingDriver,
    required TResult Function(HistoryDetailLoadError value) loadError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryDetailInitial value)? initial,
    TResult? Function(HistoryDetailLoading value)? loading,
    TResult? Function(HistoryDetailLoadSuccess value)? loadSuccess,
    TResult? Function(HistoryDetailLoadDriverSuccess value)? loadDriverSuccess,
    TResult? Function(HistoryDetailLoadingDriver value)? loadingDriver,
    TResult? Function(HistoryDetailLoadError value)? loadError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryDetailInitial value)? initial,
    TResult Function(HistoryDetailLoading value)? loading,
    TResult Function(HistoryDetailLoadSuccess value)? loadSuccess,
    TResult Function(HistoryDetailLoadDriverSuccess value)? loadDriverSuccess,
    TResult Function(HistoryDetailLoadingDriver value)? loadingDriver,
    TResult Function(HistoryDetailLoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HistoryDetailInitial implements HistoryDetailState {
  const factory HistoryDetailInitial() = _$HistoryDetailInitialImpl;
}

/// @nodoc
abstract class _$$HistoryDetailLoadingImplCopyWith<$Res> {
  factory _$$HistoryDetailLoadingImplCopyWith(_$HistoryDetailLoadingImpl value,
          $Res Function(_$HistoryDetailLoadingImpl) then) =
      __$$HistoryDetailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryDetailLoadingImplCopyWithImpl<$Res>
    extends _$HistoryDetailStateCopyWithImpl<$Res, _$HistoryDetailLoadingImpl>
    implements _$$HistoryDetailLoadingImplCopyWith<$Res> {
  __$$HistoryDetailLoadingImplCopyWithImpl(_$HistoryDetailLoadingImpl _value,
      $Res Function(_$HistoryDetailLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HistoryDetailLoadingImpl implements HistoryDetailLoading {
  const _$HistoryDetailLoadingImpl();

  @override
  String toString() {
    return 'HistoryDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryDetailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(History history) loadSuccess,
    required TResult Function(DriverInfo driverInfo) loadDriverSuccess,
    required TResult Function() loadingDriver,
    required TResult Function() loadError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(History history)? loadSuccess,
    TResult? Function(DriverInfo driverInfo)? loadDriverSuccess,
    TResult? Function()? loadingDriver,
    TResult? Function()? loadError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(History history)? loadSuccess,
    TResult Function(DriverInfo driverInfo)? loadDriverSuccess,
    TResult Function()? loadingDriver,
    TResult Function()? loadError,
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
    required TResult Function(HistoryDetailInitial value) initial,
    required TResult Function(HistoryDetailLoading value) loading,
    required TResult Function(HistoryDetailLoadSuccess value) loadSuccess,
    required TResult Function(HistoryDetailLoadDriverSuccess value)
        loadDriverSuccess,
    required TResult Function(HistoryDetailLoadingDriver value) loadingDriver,
    required TResult Function(HistoryDetailLoadError value) loadError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryDetailInitial value)? initial,
    TResult? Function(HistoryDetailLoading value)? loading,
    TResult? Function(HistoryDetailLoadSuccess value)? loadSuccess,
    TResult? Function(HistoryDetailLoadDriverSuccess value)? loadDriverSuccess,
    TResult? Function(HistoryDetailLoadingDriver value)? loadingDriver,
    TResult? Function(HistoryDetailLoadError value)? loadError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryDetailInitial value)? initial,
    TResult Function(HistoryDetailLoading value)? loading,
    TResult Function(HistoryDetailLoadSuccess value)? loadSuccess,
    TResult Function(HistoryDetailLoadDriverSuccess value)? loadDriverSuccess,
    TResult Function(HistoryDetailLoadingDriver value)? loadingDriver,
    TResult Function(HistoryDetailLoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HistoryDetailLoading implements HistoryDetailState {
  const factory HistoryDetailLoading() = _$HistoryDetailLoadingImpl;
}

/// @nodoc
abstract class _$$HistoryDetailLoadSuccessImplCopyWith<$Res> {
  factory _$$HistoryDetailLoadSuccessImplCopyWith(
          _$HistoryDetailLoadSuccessImpl value,
          $Res Function(_$HistoryDetailLoadSuccessImpl) then) =
      __$$HistoryDetailLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({History history});

  $HistoryCopyWith<$Res> get history;
}

/// @nodoc
class __$$HistoryDetailLoadSuccessImplCopyWithImpl<$Res>
    extends _$HistoryDetailStateCopyWithImpl<$Res,
        _$HistoryDetailLoadSuccessImpl>
    implements _$$HistoryDetailLoadSuccessImplCopyWith<$Res> {
  __$$HistoryDetailLoadSuccessImplCopyWithImpl(
      _$HistoryDetailLoadSuccessImpl _value,
      $Res Function(_$HistoryDetailLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? history = null,
  }) {
    return _then(_$HistoryDetailLoadSuccessImpl(
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as History,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HistoryCopyWith<$Res> get history {
    return $HistoryCopyWith<$Res>(_value.history, (value) {
      return _then(_value.copyWith(history: value));
    });
  }
}

/// @nodoc

class _$HistoryDetailLoadSuccessImpl implements HistoryDetailLoadSuccess {
  const _$HistoryDetailLoadSuccessImpl({required this.history});

  @override
  final History history;

  @override
  String toString() {
    return 'HistoryDetailState.loadSuccess(history: $history)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryDetailLoadSuccessImpl &&
            (identical(other.history, history) || other.history == history));
  }

  @override
  int get hashCode => Object.hash(runtimeType, history);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryDetailLoadSuccessImplCopyWith<_$HistoryDetailLoadSuccessImpl>
      get copyWith => __$$HistoryDetailLoadSuccessImplCopyWithImpl<
          _$HistoryDetailLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(History history) loadSuccess,
    required TResult Function(DriverInfo driverInfo) loadDriverSuccess,
    required TResult Function() loadingDriver,
    required TResult Function() loadError,
  }) {
    return loadSuccess(history);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(History history)? loadSuccess,
    TResult? Function(DriverInfo driverInfo)? loadDriverSuccess,
    TResult? Function()? loadingDriver,
    TResult? Function()? loadError,
  }) {
    return loadSuccess?.call(history);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(History history)? loadSuccess,
    TResult Function(DriverInfo driverInfo)? loadDriverSuccess,
    TResult Function()? loadingDriver,
    TResult Function()? loadError,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(history);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryDetailInitial value) initial,
    required TResult Function(HistoryDetailLoading value) loading,
    required TResult Function(HistoryDetailLoadSuccess value) loadSuccess,
    required TResult Function(HistoryDetailLoadDriverSuccess value)
        loadDriverSuccess,
    required TResult Function(HistoryDetailLoadingDriver value) loadingDriver,
    required TResult Function(HistoryDetailLoadError value) loadError,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryDetailInitial value)? initial,
    TResult? Function(HistoryDetailLoading value)? loading,
    TResult? Function(HistoryDetailLoadSuccess value)? loadSuccess,
    TResult? Function(HistoryDetailLoadDriverSuccess value)? loadDriverSuccess,
    TResult? Function(HistoryDetailLoadingDriver value)? loadingDriver,
    TResult? Function(HistoryDetailLoadError value)? loadError,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryDetailInitial value)? initial,
    TResult Function(HistoryDetailLoading value)? loading,
    TResult Function(HistoryDetailLoadSuccess value)? loadSuccess,
    TResult Function(HistoryDetailLoadDriverSuccess value)? loadDriverSuccess,
    TResult Function(HistoryDetailLoadingDriver value)? loadingDriver,
    TResult Function(HistoryDetailLoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class HistoryDetailLoadSuccess implements HistoryDetailState {
  const factory HistoryDetailLoadSuccess({required final History history}) =
      _$HistoryDetailLoadSuccessImpl;

  History get history;
  @JsonKey(ignore: true)
  _$$HistoryDetailLoadSuccessImplCopyWith<_$HistoryDetailLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryDetailLoadDriverSuccessImplCopyWith<$Res> {
  factory _$$HistoryDetailLoadDriverSuccessImplCopyWith(
          _$HistoryDetailLoadDriverSuccessImpl value,
          $Res Function(_$HistoryDetailLoadDriverSuccessImpl) then) =
      __$$HistoryDetailLoadDriverSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DriverInfo driverInfo});

  $DriverInfoCopyWith<$Res> get driverInfo;
}

/// @nodoc
class __$$HistoryDetailLoadDriverSuccessImplCopyWithImpl<$Res>
    extends _$HistoryDetailStateCopyWithImpl<$Res,
        _$HistoryDetailLoadDriverSuccessImpl>
    implements _$$HistoryDetailLoadDriverSuccessImplCopyWith<$Res> {
  __$$HistoryDetailLoadDriverSuccessImplCopyWithImpl(
      _$HistoryDetailLoadDriverSuccessImpl _value,
      $Res Function(_$HistoryDetailLoadDriverSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverInfo = null,
  }) {
    return _then(_$HistoryDetailLoadDriverSuccessImpl(
      driverInfo: null == driverInfo
          ? _value.driverInfo
          : driverInfo // ignore: cast_nullable_to_non_nullable
              as DriverInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverInfoCopyWith<$Res> get driverInfo {
    return $DriverInfoCopyWith<$Res>(_value.driverInfo, (value) {
      return _then(_value.copyWith(driverInfo: value));
    });
  }
}

/// @nodoc

class _$HistoryDetailLoadDriverSuccessImpl
    implements HistoryDetailLoadDriverSuccess {
  const _$HistoryDetailLoadDriverSuccessImpl({required this.driverInfo});

  @override
  final DriverInfo driverInfo;

  @override
  String toString() {
    return 'HistoryDetailState.loadDriverSuccess(driverInfo: $driverInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryDetailLoadDriverSuccessImpl &&
            (identical(other.driverInfo, driverInfo) ||
                other.driverInfo == driverInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driverInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryDetailLoadDriverSuccessImplCopyWith<
          _$HistoryDetailLoadDriverSuccessImpl>
      get copyWith => __$$HistoryDetailLoadDriverSuccessImplCopyWithImpl<
          _$HistoryDetailLoadDriverSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(History history) loadSuccess,
    required TResult Function(DriverInfo driverInfo) loadDriverSuccess,
    required TResult Function() loadingDriver,
    required TResult Function() loadError,
  }) {
    return loadDriverSuccess(driverInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(History history)? loadSuccess,
    TResult? Function(DriverInfo driverInfo)? loadDriverSuccess,
    TResult? Function()? loadingDriver,
    TResult? Function()? loadError,
  }) {
    return loadDriverSuccess?.call(driverInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(History history)? loadSuccess,
    TResult Function(DriverInfo driverInfo)? loadDriverSuccess,
    TResult Function()? loadingDriver,
    TResult Function()? loadError,
    required TResult orElse(),
  }) {
    if (loadDriverSuccess != null) {
      return loadDriverSuccess(driverInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryDetailInitial value) initial,
    required TResult Function(HistoryDetailLoading value) loading,
    required TResult Function(HistoryDetailLoadSuccess value) loadSuccess,
    required TResult Function(HistoryDetailLoadDriverSuccess value)
        loadDriverSuccess,
    required TResult Function(HistoryDetailLoadingDriver value) loadingDriver,
    required TResult Function(HistoryDetailLoadError value) loadError,
  }) {
    return loadDriverSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryDetailInitial value)? initial,
    TResult? Function(HistoryDetailLoading value)? loading,
    TResult? Function(HistoryDetailLoadSuccess value)? loadSuccess,
    TResult? Function(HistoryDetailLoadDriverSuccess value)? loadDriverSuccess,
    TResult? Function(HistoryDetailLoadingDriver value)? loadingDriver,
    TResult? Function(HistoryDetailLoadError value)? loadError,
  }) {
    return loadDriverSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryDetailInitial value)? initial,
    TResult Function(HistoryDetailLoading value)? loading,
    TResult Function(HistoryDetailLoadSuccess value)? loadSuccess,
    TResult Function(HistoryDetailLoadDriverSuccess value)? loadDriverSuccess,
    TResult Function(HistoryDetailLoadingDriver value)? loadingDriver,
    TResult Function(HistoryDetailLoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (loadDriverSuccess != null) {
      return loadDriverSuccess(this);
    }
    return orElse();
  }
}

abstract class HistoryDetailLoadDriverSuccess implements HistoryDetailState {
  const factory HistoryDetailLoadDriverSuccess(
          {required final DriverInfo driverInfo}) =
      _$HistoryDetailLoadDriverSuccessImpl;

  DriverInfo get driverInfo;
  @JsonKey(ignore: true)
  _$$HistoryDetailLoadDriverSuccessImplCopyWith<
          _$HistoryDetailLoadDriverSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryDetailLoadingDriverImplCopyWith<$Res> {
  factory _$$HistoryDetailLoadingDriverImplCopyWith(
          _$HistoryDetailLoadingDriverImpl value,
          $Res Function(_$HistoryDetailLoadingDriverImpl) then) =
      __$$HistoryDetailLoadingDriverImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryDetailLoadingDriverImplCopyWithImpl<$Res>
    extends _$HistoryDetailStateCopyWithImpl<$Res,
        _$HistoryDetailLoadingDriverImpl>
    implements _$$HistoryDetailLoadingDriverImplCopyWith<$Res> {
  __$$HistoryDetailLoadingDriverImplCopyWithImpl(
      _$HistoryDetailLoadingDriverImpl _value,
      $Res Function(_$HistoryDetailLoadingDriverImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HistoryDetailLoadingDriverImpl implements HistoryDetailLoadingDriver {
  const _$HistoryDetailLoadingDriverImpl();

  @override
  String toString() {
    return 'HistoryDetailState.loadingDriver()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryDetailLoadingDriverImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(History history) loadSuccess,
    required TResult Function(DriverInfo driverInfo) loadDriverSuccess,
    required TResult Function() loadingDriver,
    required TResult Function() loadError,
  }) {
    return loadingDriver();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(History history)? loadSuccess,
    TResult? Function(DriverInfo driverInfo)? loadDriverSuccess,
    TResult? Function()? loadingDriver,
    TResult? Function()? loadError,
  }) {
    return loadingDriver?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(History history)? loadSuccess,
    TResult Function(DriverInfo driverInfo)? loadDriverSuccess,
    TResult Function()? loadingDriver,
    TResult Function()? loadError,
    required TResult orElse(),
  }) {
    if (loadingDriver != null) {
      return loadingDriver();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryDetailInitial value) initial,
    required TResult Function(HistoryDetailLoading value) loading,
    required TResult Function(HistoryDetailLoadSuccess value) loadSuccess,
    required TResult Function(HistoryDetailLoadDriverSuccess value)
        loadDriverSuccess,
    required TResult Function(HistoryDetailLoadingDriver value) loadingDriver,
    required TResult Function(HistoryDetailLoadError value) loadError,
  }) {
    return loadingDriver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryDetailInitial value)? initial,
    TResult? Function(HistoryDetailLoading value)? loading,
    TResult? Function(HistoryDetailLoadSuccess value)? loadSuccess,
    TResult? Function(HistoryDetailLoadDriverSuccess value)? loadDriverSuccess,
    TResult? Function(HistoryDetailLoadingDriver value)? loadingDriver,
    TResult? Function(HistoryDetailLoadError value)? loadError,
  }) {
    return loadingDriver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryDetailInitial value)? initial,
    TResult Function(HistoryDetailLoading value)? loading,
    TResult Function(HistoryDetailLoadSuccess value)? loadSuccess,
    TResult Function(HistoryDetailLoadDriverSuccess value)? loadDriverSuccess,
    TResult Function(HistoryDetailLoadingDriver value)? loadingDriver,
    TResult Function(HistoryDetailLoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (loadingDriver != null) {
      return loadingDriver(this);
    }
    return orElse();
  }
}

abstract class HistoryDetailLoadingDriver implements HistoryDetailState {
  const factory HistoryDetailLoadingDriver() = _$HistoryDetailLoadingDriverImpl;
}

/// @nodoc
abstract class _$$HistoryDetailLoadErrorImplCopyWith<$Res> {
  factory _$$HistoryDetailLoadErrorImplCopyWith(
          _$HistoryDetailLoadErrorImpl value,
          $Res Function(_$HistoryDetailLoadErrorImpl) then) =
      __$$HistoryDetailLoadErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryDetailLoadErrorImplCopyWithImpl<$Res>
    extends _$HistoryDetailStateCopyWithImpl<$Res, _$HistoryDetailLoadErrorImpl>
    implements _$$HistoryDetailLoadErrorImplCopyWith<$Res> {
  __$$HistoryDetailLoadErrorImplCopyWithImpl(
      _$HistoryDetailLoadErrorImpl _value,
      $Res Function(_$HistoryDetailLoadErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HistoryDetailLoadErrorImpl implements HistoryDetailLoadError {
  const _$HistoryDetailLoadErrorImpl();

  @override
  String toString() {
    return 'HistoryDetailState.loadError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryDetailLoadErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(History history) loadSuccess,
    required TResult Function(DriverInfo driverInfo) loadDriverSuccess,
    required TResult Function() loadingDriver,
    required TResult Function() loadError,
  }) {
    return loadError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(History history)? loadSuccess,
    TResult? Function(DriverInfo driverInfo)? loadDriverSuccess,
    TResult? Function()? loadingDriver,
    TResult? Function()? loadError,
  }) {
    return loadError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(History history)? loadSuccess,
    TResult Function(DriverInfo driverInfo)? loadDriverSuccess,
    TResult Function()? loadingDriver,
    TResult Function()? loadError,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryDetailInitial value) initial,
    required TResult Function(HistoryDetailLoading value) loading,
    required TResult Function(HistoryDetailLoadSuccess value) loadSuccess,
    required TResult Function(HistoryDetailLoadDriverSuccess value)
        loadDriverSuccess,
    required TResult Function(HistoryDetailLoadingDriver value) loadingDriver,
    required TResult Function(HistoryDetailLoadError value) loadError,
  }) {
    return loadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryDetailInitial value)? initial,
    TResult? Function(HistoryDetailLoading value)? loading,
    TResult? Function(HistoryDetailLoadSuccess value)? loadSuccess,
    TResult? Function(HistoryDetailLoadDriverSuccess value)? loadDriverSuccess,
    TResult? Function(HistoryDetailLoadingDriver value)? loadingDriver,
    TResult? Function(HistoryDetailLoadError value)? loadError,
  }) {
    return loadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryDetailInitial value)? initial,
    TResult Function(HistoryDetailLoading value)? loading,
    TResult Function(HistoryDetailLoadSuccess value)? loadSuccess,
    TResult Function(HistoryDetailLoadDriverSuccess value)? loadDriverSuccess,
    TResult Function(HistoryDetailLoadingDriver value)? loadingDriver,
    TResult Function(HistoryDetailLoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(this);
    }
    return orElse();
  }
}

abstract class HistoryDetailLoadError implements HistoryDetailState {
  const factory HistoryDetailLoadError() = _$HistoryDetailLoadErrorImpl;
}
