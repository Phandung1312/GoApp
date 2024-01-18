// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAll,
    required TResult Function() loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAll,
    TResult? Function()? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAll,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryLoadAll value) loadAll,
    required TResult Function(HistoryLoadMore value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryLoadAll value)? loadAll,
    TResult? Function(HistoryLoadMore value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryLoadAll value)? loadAll,
    TResult Function(HistoryLoadMore value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res, HistoryEvent>;
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res, $Val extends HistoryEvent>
    implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HistoryLoadAllImplCopyWith<$Res> {
  factory _$$HistoryLoadAllImplCopyWith(_$HistoryLoadAllImpl value,
          $Res Function(_$HistoryLoadAllImpl) then) =
      __$$HistoryLoadAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryLoadAllImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$HistoryLoadAllImpl>
    implements _$$HistoryLoadAllImplCopyWith<$Res> {
  __$$HistoryLoadAllImplCopyWithImpl(
      _$HistoryLoadAllImpl _value, $Res Function(_$HistoryLoadAllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HistoryLoadAllImpl implements HistoryLoadAll {
  const _$HistoryLoadAllImpl();

  @override
  String toString() {
    return 'HistoryEvent.loadAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HistoryLoadAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAll,
    required TResult Function() loadMore,
  }) {
    return loadAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAll,
    TResult? Function()? loadMore,
  }) {
    return loadAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAll,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (loadAll != null) {
      return loadAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryLoadAll value) loadAll,
    required TResult Function(HistoryLoadMore value) loadMore,
  }) {
    return loadAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryLoadAll value)? loadAll,
    TResult? Function(HistoryLoadMore value)? loadMore,
  }) {
    return loadAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryLoadAll value)? loadAll,
    TResult Function(HistoryLoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadAll != null) {
      return loadAll(this);
    }
    return orElse();
  }
}

abstract class HistoryLoadAll implements HistoryEvent {
  const factory HistoryLoadAll() = _$HistoryLoadAllImpl;
}

/// @nodoc
abstract class _$$HistoryLoadMoreImplCopyWith<$Res> {
  factory _$$HistoryLoadMoreImplCopyWith(_$HistoryLoadMoreImpl value,
          $Res Function(_$HistoryLoadMoreImpl) then) =
      __$$HistoryLoadMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryLoadMoreImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$HistoryLoadMoreImpl>
    implements _$$HistoryLoadMoreImplCopyWith<$Res> {
  __$$HistoryLoadMoreImplCopyWithImpl(
      _$HistoryLoadMoreImpl _value, $Res Function(_$HistoryLoadMoreImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HistoryLoadMoreImpl implements HistoryLoadMore {
  const _$HistoryLoadMoreImpl();

  @override
  String toString() {
    return 'HistoryEvent.loadMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HistoryLoadMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAll,
    required TResult Function() loadMore,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAll,
    TResult? Function()? loadMore,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAll,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryLoadAll value) loadAll,
    required TResult Function(HistoryLoadMore value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryLoadAll value)? loadAll,
    TResult? Function(HistoryLoadMore value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryLoadAll value)? loadAll,
    TResult Function(HistoryLoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class HistoryLoadMore implements HistoryEvent {
  const factory HistoryLoadMore() = _$HistoryLoadMoreImpl;
}

/// @nodoc
mixin _$HistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<History> histories) loadSuccess,
    required TResult Function(Failure failure) loadError,
    required TResult Function() loadingMore,
    required TResult Function(List<History> histories) loadMoreSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<History> histories)? loadSuccess,
    TResult? Function(Failure failure)? loadError,
    TResult? Function()? loadingMore,
    TResult? Function(List<History> histories)? loadMoreSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<History> histories)? loadSuccess,
    TResult Function(Failure failure)? loadError,
    TResult Function()? loadingMore,
    TResult Function(List<History> histories)? loadMoreSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistorInitial value) initial,
    required TResult Function(HistoryLoading value) loading,
    required TResult Function(HistoryLoadSuccess value) loadSuccess,
    required TResult Function(HistoryLoadError value) loadError,
    required TResult Function(HistoryLoadingMore value) loadingMore,
    required TResult Function(HistoryLoadMoreSuccess value) loadMoreSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistorInitial value)? initial,
    TResult? Function(HistoryLoading value)? loading,
    TResult? Function(HistoryLoadSuccess value)? loadSuccess,
    TResult? Function(HistoryLoadError value)? loadError,
    TResult? Function(HistoryLoadingMore value)? loadingMore,
    TResult? Function(HistoryLoadMoreSuccess value)? loadMoreSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistorInitial value)? initial,
    TResult Function(HistoryLoading value)? loading,
    TResult Function(HistoryLoadSuccess value)? loadSuccess,
    TResult Function(HistoryLoadError value)? loadError,
    TResult Function(HistoryLoadingMore value)? loadingMore,
    TResult Function(HistoryLoadMoreSuccess value)? loadMoreSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HistorInitialImplCopyWith<$Res> {
  factory _$$HistorInitialImplCopyWith(
          _$HistorInitialImpl value, $Res Function(_$HistorInitialImpl) then) =
      __$$HistorInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistorInitialImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistorInitialImpl>
    implements _$$HistorInitialImplCopyWith<$Res> {
  __$$HistorInitialImplCopyWithImpl(
      _$HistorInitialImpl _value, $Res Function(_$HistorInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HistorInitialImpl implements HistorInitial {
  const _$HistorInitialImpl();

  @override
  String toString() {
    return 'HistoryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HistorInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<History> histories) loadSuccess,
    required TResult Function(Failure failure) loadError,
    required TResult Function() loadingMore,
    required TResult Function(List<History> histories) loadMoreSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<History> histories)? loadSuccess,
    TResult? Function(Failure failure)? loadError,
    TResult? Function()? loadingMore,
    TResult? Function(List<History> histories)? loadMoreSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<History> histories)? loadSuccess,
    TResult Function(Failure failure)? loadError,
    TResult Function()? loadingMore,
    TResult Function(List<History> histories)? loadMoreSuccess,
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
    required TResult Function(HistorInitial value) initial,
    required TResult Function(HistoryLoading value) loading,
    required TResult Function(HistoryLoadSuccess value) loadSuccess,
    required TResult Function(HistoryLoadError value) loadError,
    required TResult Function(HistoryLoadingMore value) loadingMore,
    required TResult Function(HistoryLoadMoreSuccess value) loadMoreSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistorInitial value)? initial,
    TResult? Function(HistoryLoading value)? loading,
    TResult? Function(HistoryLoadSuccess value)? loadSuccess,
    TResult? Function(HistoryLoadError value)? loadError,
    TResult? Function(HistoryLoadingMore value)? loadingMore,
    TResult? Function(HistoryLoadMoreSuccess value)? loadMoreSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistorInitial value)? initial,
    TResult Function(HistoryLoading value)? loading,
    TResult Function(HistoryLoadSuccess value)? loadSuccess,
    TResult Function(HistoryLoadError value)? loadError,
    TResult Function(HistoryLoadingMore value)? loadingMore,
    TResult Function(HistoryLoadMoreSuccess value)? loadMoreSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HistorInitial implements HistoryState {
  const factory HistorInitial() = _$HistorInitialImpl;
}

/// @nodoc
abstract class _$$HistoryLoadingImplCopyWith<$Res> {
  factory _$$HistoryLoadingImplCopyWith(_$HistoryLoadingImpl value,
          $Res Function(_$HistoryLoadingImpl) then) =
      __$$HistoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryLoadingImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryLoadingImpl>
    implements _$$HistoryLoadingImplCopyWith<$Res> {
  __$$HistoryLoadingImplCopyWithImpl(
      _$HistoryLoadingImpl _value, $Res Function(_$HistoryLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HistoryLoadingImpl implements HistoryLoading {
  const _$HistoryLoadingImpl();

  @override
  String toString() {
    return 'HistoryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HistoryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<History> histories) loadSuccess,
    required TResult Function(Failure failure) loadError,
    required TResult Function() loadingMore,
    required TResult Function(List<History> histories) loadMoreSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<History> histories)? loadSuccess,
    TResult? Function(Failure failure)? loadError,
    TResult? Function()? loadingMore,
    TResult? Function(List<History> histories)? loadMoreSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<History> histories)? loadSuccess,
    TResult Function(Failure failure)? loadError,
    TResult Function()? loadingMore,
    TResult Function(List<History> histories)? loadMoreSuccess,
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
    required TResult Function(HistorInitial value) initial,
    required TResult Function(HistoryLoading value) loading,
    required TResult Function(HistoryLoadSuccess value) loadSuccess,
    required TResult Function(HistoryLoadError value) loadError,
    required TResult Function(HistoryLoadingMore value) loadingMore,
    required TResult Function(HistoryLoadMoreSuccess value) loadMoreSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistorInitial value)? initial,
    TResult? Function(HistoryLoading value)? loading,
    TResult? Function(HistoryLoadSuccess value)? loadSuccess,
    TResult? Function(HistoryLoadError value)? loadError,
    TResult? Function(HistoryLoadingMore value)? loadingMore,
    TResult? Function(HistoryLoadMoreSuccess value)? loadMoreSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistorInitial value)? initial,
    TResult Function(HistoryLoading value)? loading,
    TResult Function(HistoryLoadSuccess value)? loadSuccess,
    TResult Function(HistoryLoadError value)? loadError,
    TResult Function(HistoryLoadingMore value)? loadingMore,
    TResult Function(HistoryLoadMoreSuccess value)? loadMoreSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HistoryLoading implements HistoryState {
  const factory HistoryLoading() = _$HistoryLoadingImpl;
}

/// @nodoc
abstract class _$$HistoryLoadSuccessImplCopyWith<$Res> {
  factory _$$HistoryLoadSuccessImplCopyWith(_$HistoryLoadSuccessImpl value,
          $Res Function(_$HistoryLoadSuccessImpl) then) =
      __$$HistoryLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<History> histories});
}

/// @nodoc
class __$$HistoryLoadSuccessImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryLoadSuccessImpl>
    implements _$$HistoryLoadSuccessImplCopyWith<$Res> {
  __$$HistoryLoadSuccessImplCopyWithImpl(_$HistoryLoadSuccessImpl _value,
      $Res Function(_$HistoryLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? histories = null,
  }) {
    return _then(_$HistoryLoadSuccessImpl(
      histories: null == histories
          ? _value._histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<History>,
    ));
  }
}

/// @nodoc

class _$HistoryLoadSuccessImpl implements HistoryLoadSuccess {
  const _$HistoryLoadSuccessImpl({required final List<History> histories})
      : _histories = histories;

  final List<History> _histories;
  @override
  List<History> get histories {
    if (_histories is EqualUnmodifiableListView) return _histories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_histories);
  }

  @override
  String toString() {
    return 'HistoryState.loadSuccess(histories: $histories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryLoadSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._histories, _histories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_histories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryLoadSuccessImplCopyWith<_$HistoryLoadSuccessImpl> get copyWith =>
      __$$HistoryLoadSuccessImplCopyWithImpl<_$HistoryLoadSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<History> histories) loadSuccess,
    required TResult Function(Failure failure) loadError,
    required TResult Function() loadingMore,
    required TResult Function(List<History> histories) loadMoreSuccess,
  }) {
    return loadSuccess(histories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<History> histories)? loadSuccess,
    TResult? Function(Failure failure)? loadError,
    TResult? Function()? loadingMore,
    TResult? Function(List<History> histories)? loadMoreSuccess,
  }) {
    return loadSuccess?.call(histories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<History> histories)? loadSuccess,
    TResult Function(Failure failure)? loadError,
    TResult Function()? loadingMore,
    TResult Function(List<History> histories)? loadMoreSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(histories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistorInitial value) initial,
    required TResult Function(HistoryLoading value) loading,
    required TResult Function(HistoryLoadSuccess value) loadSuccess,
    required TResult Function(HistoryLoadError value) loadError,
    required TResult Function(HistoryLoadingMore value) loadingMore,
    required TResult Function(HistoryLoadMoreSuccess value) loadMoreSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistorInitial value)? initial,
    TResult? Function(HistoryLoading value)? loading,
    TResult? Function(HistoryLoadSuccess value)? loadSuccess,
    TResult? Function(HistoryLoadError value)? loadError,
    TResult? Function(HistoryLoadingMore value)? loadingMore,
    TResult? Function(HistoryLoadMoreSuccess value)? loadMoreSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistorInitial value)? initial,
    TResult Function(HistoryLoading value)? loading,
    TResult Function(HistoryLoadSuccess value)? loadSuccess,
    TResult Function(HistoryLoadError value)? loadError,
    TResult Function(HistoryLoadingMore value)? loadingMore,
    TResult Function(HistoryLoadMoreSuccess value)? loadMoreSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class HistoryLoadSuccess implements HistoryState {
  const factory HistoryLoadSuccess({required final List<History> histories}) =
      _$HistoryLoadSuccessImpl;

  List<History> get histories;
  @JsonKey(ignore: true)
  _$$HistoryLoadSuccessImplCopyWith<_$HistoryLoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryLoadErrorImplCopyWith<$Res> {
  factory _$$HistoryLoadErrorImplCopyWith(_$HistoryLoadErrorImpl value,
          $Res Function(_$HistoryLoadErrorImpl) then) =
      __$$HistoryLoadErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$HistoryLoadErrorImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryLoadErrorImpl>
    implements _$$HistoryLoadErrorImplCopyWith<$Res> {
  __$$HistoryLoadErrorImplCopyWithImpl(_$HistoryLoadErrorImpl _value,
      $Res Function(_$HistoryLoadErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$HistoryLoadErrorImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$HistoryLoadErrorImpl implements HistoryLoadError {
  const _$HistoryLoadErrorImpl({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'HistoryState.loadError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryLoadErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryLoadErrorImplCopyWith<_$HistoryLoadErrorImpl> get copyWith =>
      __$$HistoryLoadErrorImplCopyWithImpl<_$HistoryLoadErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<History> histories) loadSuccess,
    required TResult Function(Failure failure) loadError,
    required TResult Function() loadingMore,
    required TResult Function(List<History> histories) loadMoreSuccess,
  }) {
    return loadError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<History> histories)? loadSuccess,
    TResult? Function(Failure failure)? loadError,
    TResult? Function()? loadingMore,
    TResult? Function(List<History> histories)? loadMoreSuccess,
  }) {
    return loadError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<History> histories)? loadSuccess,
    TResult Function(Failure failure)? loadError,
    TResult Function()? loadingMore,
    TResult Function(List<History> histories)? loadMoreSuccess,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistorInitial value) initial,
    required TResult Function(HistoryLoading value) loading,
    required TResult Function(HistoryLoadSuccess value) loadSuccess,
    required TResult Function(HistoryLoadError value) loadError,
    required TResult Function(HistoryLoadingMore value) loadingMore,
    required TResult Function(HistoryLoadMoreSuccess value) loadMoreSuccess,
  }) {
    return loadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistorInitial value)? initial,
    TResult? Function(HistoryLoading value)? loading,
    TResult? Function(HistoryLoadSuccess value)? loadSuccess,
    TResult? Function(HistoryLoadError value)? loadError,
    TResult? Function(HistoryLoadingMore value)? loadingMore,
    TResult? Function(HistoryLoadMoreSuccess value)? loadMoreSuccess,
  }) {
    return loadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistorInitial value)? initial,
    TResult Function(HistoryLoading value)? loading,
    TResult Function(HistoryLoadSuccess value)? loadSuccess,
    TResult Function(HistoryLoadError value)? loadError,
    TResult Function(HistoryLoadingMore value)? loadingMore,
    TResult Function(HistoryLoadMoreSuccess value)? loadMoreSuccess,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(this);
    }
    return orElse();
  }
}

abstract class HistoryLoadError implements HistoryState {
  const factory HistoryLoadError({required final Failure failure}) =
      _$HistoryLoadErrorImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$HistoryLoadErrorImplCopyWith<_$HistoryLoadErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryLoadingMoreImplCopyWith<$Res> {
  factory _$$HistoryLoadingMoreImplCopyWith(_$HistoryLoadingMoreImpl value,
          $Res Function(_$HistoryLoadingMoreImpl) then) =
      __$$HistoryLoadingMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryLoadingMoreImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryLoadingMoreImpl>
    implements _$$HistoryLoadingMoreImplCopyWith<$Res> {
  __$$HistoryLoadingMoreImplCopyWithImpl(_$HistoryLoadingMoreImpl _value,
      $Res Function(_$HistoryLoadingMoreImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HistoryLoadingMoreImpl implements HistoryLoadingMore {
  const _$HistoryLoadingMoreImpl();

  @override
  String toString() {
    return 'HistoryState.loadingMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HistoryLoadingMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<History> histories) loadSuccess,
    required TResult Function(Failure failure) loadError,
    required TResult Function() loadingMore,
    required TResult Function(List<History> histories) loadMoreSuccess,
  }) {
    return loadingMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<History> histories)? loadSuccess,
    TResult? Function(Failure failure)? loadError,
    TResult? Function()? loadingMore,
    TResult? Function(List<History> histories)? loadMoreSuccess,
  }) {
    return loadingMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<History> histories)? loadSuccess,
    TResult Function(Failure failure)? loadError,
    TResult Function()? loadingMore,
    TResult Function(List<History> histories)? loadMoreSuccess,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistorInitial value) initial,
    required TResult Function(HistoryLoading value) loading,
    required TResult Function(HistoryLoadSuccess value) loadSuccess,
    required TResult Function(HistoryLoadError value) loadError,
    required TResult Function(HistoryLoadingMore value) loadingMore,
    required TResult Function(HistoryLoadMoreSuccess value) loadMoreSuccess,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistorInitial value)? initial,
    TResult? Function(HistoryLoading value)? loading,
    TResult? Function(HistoryLoadSuccess value)? loadSuccess,
    TResult? Function(HistoryLoadError value)? loadError,
    TResult? Function(HistoryLoadingMore value)? loadingMore,
    TResult? Function(HistoryLoadMoreSuccess value)? loadMoreSuccess,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistorInitial value)? initial,
    TResult Function(HistoryLoading value)? loading,
    TResult Function(HistoryLoadSuccess value)? loadSuccess,
    TResult Function(HistoryLoadError value)? loadError,
    TResult Function(HistoryLoadingMore value)? loadingMore,
    TResult Function(HistoryLoadMoreSuccess value)? loadMoreSuccess,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class HistoryLoadingMore implements HistoryState {
  const factory HistoryLoadingMore() = _$HistoryLoadingMoreImpl;
}

/// @nodoc
abstract class _$$HistoryLoadMoreSuccessImplCopyWith<$Res> {
  factory _$$HistoryLoadMoreSuccessImplCopyWith(
          _$HistoryLoadMoreSuccessImpl value,
          $Res Function(_$HistoryLoadMoreSuccessImpl) then) =
      __$$HistoryLoadMoreSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<History> histories});
}

/// @nodoc
class __$$HistoryLoadMoreSuccessImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryLoadMoreSuccessImpl>
    implements _$$HistoryLoadMoreSuccessImplCopyWith<$Res> {
  __$$HistoryLoadMoreSuccessImplCopyWithImpl(
      _$HistoryLoadMoreSuccessImpl _value,
      $Res Function(_$HistoryLoadMoreSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? histories = null,
  }) {
    return _then(_$HistoryLoadMoreSuccessImpl(
      histories: null == histories
          ? _value._histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<History>,
    ));
  }
}

/// @nodoc

class _$HistoryLoadMoreSuccessImpl implements HistoryLoadMoreSuccess {
  const _$HistoryLoadMoreSuccessImpl({required final List<History> histories})
      : _histories = histories;

  final List<History> _histories;
  @override
  List<History> get histories {
    if (_histories is EqualUnmodifiableListView) return _histories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_histories);
  }

  @override
  String toString() {
    return 'HistoryState.loadMoreSuccess(histories: $histories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryLoadMoreSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._histories, _histories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_histories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryLoadMoreSuccessImplCopyWith<_$HistoryLoadMoreSuccessImpl>
      get copyWith => __$$HistoryLoadMoreSuccessImplCopyWithImpl<
          _$HistoryLoadMoreSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<History> histories) loadSuccess,
    required TResult Function(Failure failure) loadError,
    required TResult Function() loadingMore,
    required TResult Function(List<History> histories) loadMoreSuccess,
  }) {
    return loadMoreSuccess(histories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<History> histories)? loadSuccess,
    TResult? Function(Failure failure)? loadError,
    TResult? Function()? loadingMore,
    TResult? Function(List<History> histories)? loadMoreSuccess,
  }) {
    return loadMoreSuccess?.call(histories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<History> histories)? loadSuccess,
    TResult Function(Failure failure)? loadError,
    TResult Function()? loadingMore,
    TResult Function(List<History> histories)? loadMoreSuccess,
    required TResult orElse(),
  }) {
    if (loadMoreSuccess != null) {
      return loadMoreSuccess(histories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistorInitial value) initial,
    required TResult Function(HistoryLoading value) loading,
    required TResult Function(HistoryLoadSuccess value) loadSuccess,
    required TResult Function(HistoryLoadError value) loadError,
    required TResult Function(HistoryLoadingMore value) loadingMore,
    required TResult Function(HistoryLoadMoreSuccess value) loadMoreSuccess,
  }) {
    return loadMoreSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistorInitial value)? initial,
    TResult? Function(HistoryLoading value)? loading,
    TResult? Function(HistoryLoadSuccess value)? loadSuccess,
    TResult? Function(HistoryLoadError value)? loadError,
    TResult? Function(HistoryLoadingMore value)? loadingMore,
    TResult? Function(HistoryLoadMoreSuccess value)? loadMoreSuccess,
  }) {
    return loadMoreSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistorInitial value)? initial,
    TResult Function(HistoryLoading value)? loading,
    TResult Function(HistoryLoadSuccess value)? loadSuccess,
    TResult Function(HistoryLoadError value)? loadError,
    TResult Function(HistoryLoadingMore value)? loadingMore,
    TResult Function(HistoryLoadMoreSuccess value)? loadMoreSuccess,
    required TResult orElse(),
  }) {
    if (loadMoreSuccess != null) {
      return loadMoreSuccess(this);
    }
    return orElse();
  }
}

abstract class HistoryLoadMoreSuccess implements HistoryState {
  const factory HistoryLoadMoreSuccess(
      {required final List<History> histories}) = _$HistoryLoadMoreSuccessImpl;

  List<History> get histories;
  @JsonKey(ignore: true)
  _$$HistoryLoadMoreSuccessImplCopyWith<_$HistoryLoadMoreSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
