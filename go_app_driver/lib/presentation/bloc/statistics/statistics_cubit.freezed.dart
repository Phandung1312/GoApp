// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StatisticsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadError,
    required TResult Function(Statistics statistics) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadError,
    TResult? Function(Statistics statistics)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadError,
    TResult Function(Statistics statistics)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatisticsInitial value) initial,
    required TResult Function(StatisticsLoading value) loading,
    required TResult Function(StatisticsLoadError value) loadError,
    required TResult Function(StatisticsLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatisticsInitial value)? initial,
    TResult? Function(StatisticsLoading value)? loading,
    TResult? Function(StatisticsLoadError value)? loadError,
    TResult? Function(StatisticsLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatisticsInitial value)? initial,
    TResult Function(StatisticsLoading value)? loading,
    TResult Function(StatisticsLoadError value)? loadError,
    TResult Function(StatisticsLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsStateCopyWith<$Res> {
  factory $StatisticsStateCopyWith(
          StatisticsState value, $Res Function(StatisticsState) then) =
      _$StatisticsStateCopyWithImpl<$Res, StatisticsState>;
}

/// @nodoc
class _$StatisticsStateCopyWithImpl<$Res, $Val extends StatisticsState>
    implements $StatisticsStateCopyWith<$Res> {
  _$StatisticsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StatisticsInitialImplCopyWith<$Res> {
  factory _$$StatisticsInitialImplCopyWith(_$StatisticsInitialImpl value,
          $Res Function(_$StatisticsInitialImpl) then) =
      __$$StatisticsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatisticsInitialImplCopyWithImpl<$Res>
    extends _$StatisticsStateCopyWithImpl<$Res, _$StatisticsInitialImpl>
    implements _$$StatisticsInitialImplCopyWith<$Res> {
  __$$StatisticsInitialImplCopyWithImpl(_$StatisticsInitialImpl _value,
      $Res Function(_$StatisticsInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatisticsInitialImpl implements StatisticsInitial {
  const _$StatisticsInitialImpl();

  @override
  String toString() {
    return 'StatisticsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatisticsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadError,
    required TResult Function(Statistics statistics) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadError,
    TResult? Function(Statistics statistics)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadError,
    TResult Function(Statistics statistics)? loadSuccess,
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
    required TResult Function(StatisticsInitial value) initial,
    required TResult Function(StatisticsLoading value) loading,
    required TResult Function(StatisticsLoadError value) loadError,
    required TResult Function(StatisticsLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatisticsInitial value)? initial,
    TResult? Function(StatisticsLoading value)? loading,
    TResult? Function(StatisticsLoadError value)? loadError,
    TResult? Function(StatisticsLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatisticsInitial value)? initial,
    TResult Function(StatisticsLoading value)? loading,
    TResult Function(StatisticsLoadError value)? loadError,
    TResult Function(StatisticsLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StatisticsInitial implements StatisticsState {
  const factory StatisticsInitial() = _$StatisticsInitialImpl;
}

/// @nodoc
abstract class _$$StatisticsLoadingImplCopyWith<$Res> {
  factory _$$StatisticsLoadingImplCopyWith(_$StatisticsLoadingImpl value,
          $Res Function(_$StatisticsLoadingImpl) then) =
      __$$StatisticsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatisticsLoadingImplCopyWithImpl<$Res>
    extends _$StatisticsStateCopyWithImpl<$Res, _$StatisticsLoadingImpl>
    implements _$$StatisticsLoadingImplCopyWith<$Res> {
  __$$StatisticsLoadingImplCopyWithImpl(_$StatisticsLoadingImpl _value,
      $Res Function(_$StatisticsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatisticsLoadingImpl implements StatisticsLoading {
  const _$StatisticsLoadingImpl();

  @override
  String toString() {
    return 'StatisticsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatisticsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadError,
    required TResult Function(Statistics statistics) loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadError,
    TResult? Function(Statistics statistics)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadError,
    TResult Function(Statistics statistics)? loadSuccess,
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
    required TResult Function(StatisticsInitial value) initial,
    required TResult Function(StatisticsLoading value) loading,
    required TResult Function(StatisticsLoadError value) loadError,
    required TResult Function(StatisticsLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatisticsInitial value)? initial,
    TResult? Function(StatisticsLoading value)? loading,
    TResult? Function(StatisticsLoadError value)? loadError,
    TResult? Function(StatisticsLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatisticsInitial value)? initial,
    TResult Function(StatisticsLoading value)? loading,
    TResult Function(StatisticsLoadError value)? loadError,
    TResult Function(StatisticsLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StatisticsLoading implements StatisticsState {
  const factory StatisticsLoading() = _$StatisticsLoadingImpl;
}

/// @nodoc
abstract class _$$StatisticsLoadErrorImplCopyWith<$Res> {
  factory _$$StatisticsLoadErrorImplCopyWith(_$StatisticsLoadErrorImpl value,
          $Res Function(_$StatisticsLoadErrorImpl) then) =
      __$$StatisticsLoadErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatisticsLoadErrorImplCopyWithImpl<$Res>
    extends _$StatisticsStateCopyWithImpl<$Res, _$StatisticsLoadErrorImpl>
    implements _$$StatisticsLoadErrorImplCopyWith<$Res> {
  __$$StatisticsLoadErrorImplCopyWithImpl(_$StatisticsLoadErrorImpl _value,
      $Res Function(_$StatisticsLoadErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatisticsLoadErrorImpl implements StatisticsLoadError {
  const _$StatisticsLoadErrorImpl();

  @override
  String toString() {
    return 'StatisticsState.loadError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsLoadErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadError,
    required TResult Function(Statistics statistics) loadSuccess,
  }) {
    return loadError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadError,
    TResult? Function(Statistics statistics)? loadSuccess,
  }) {
    return loadError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadError,
    TResult Function(Statistics statistics)? loadSuccess,
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
    required TResult Function(StatisticsInitial value) initial,
    required TResult Function(StatisticsLoading value) loading,
    required TResult Function(StatisticsLoadError value) loadError,
    required TResult Function(StatisticsLoadSuccess value) loadSuccess,
  }) {
    return loadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatisticsInitial value)? initial,
    TResult? Function(StatisticsLoading value)? loading,
    TResult? Function(StatisticsLoadError value)? loadError,
    TResult? Function(StatisticsLoadSuccess value)? loadSuccess,
  }) {
    return loadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatisticsInitial value)? initial,
    TResult Function(StatisticsLoading value)? loading,
    TResult Function(StatisticsLoadError value)? loadError,
    TResult Function(StatisticsLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(this);
    }
    return orElse();
  }
}

abstract class StatisticsLoadError implements StatisticsState {
  const factory StatisticsLoadError() = _$StatisticsLoadErrorImpl;
}

/// @nodoc
abstract class _$$StatisticsLoadSuccessImplCopyWith<$Res> {
  factory _$$StatisticsLoadSuccessImplCopyWith(
          _$StatisticsLoadSuccessImpl value,
          $Res Function(_$StatisticsLoadSuccessImpl) then) =
      __$$StatisticsLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Statistics statistics});

  $StatisticsCopyWith<$Res> get statistics;
}

/// @nodoc
class __$$StatisticsLoadSuccessImplCopyWithImpl<$Res>
    extends _$StatisticsStateCopyWithImpl<$Res, _$StatisticsLoadSuccessImpl>
    implements _$$StatisticsLoadSuccessImplCopyWith<$Res> {
  __$$StatisticsLoadSuccessImplCopyWithImpl(_$StatisticsLoadSuccessImpl _value,
      $Res Function(_$StatisticsLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statistics = null,
  }) {
    return _then(_$StatisticsLoadSuccessImpl(
      null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Statistics,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StatisticsCopyWith<$Res> get statistics {
    return $StatisticsCopyWith<$Res>(_value.statistics, (value) {
      return _then(_value.copyWith(statistics: value));
    });
  }
}

/// @nodoc

class _$StatisticsLoadSuccessImpl implements StatisticsLoadSuccess {
  const _$StatisticsLoadSuccessImpl(this.statistics);

  @override
  final Statistics statistics;

  @override
  String toString() {
    return 'StatisticsState.loadSuccess(statistics: $statistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsLoadSuccessImpl &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statistics);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsLoadSuccessImplCopyWith<_$StatisticsLoadSuccessImpl>
      get copyWith => __$$StatisticsLoadSuccessImplCopyWithImpl<
          _$StatisticsLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadError,
    required TResult Function(Statistics statistics) loadSuccess,
  }) {
    return loadSuccess(statistics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadError,
    TResult? Function(Statistics statistics)? loadSuccess,
  }) {
    return loadSuccess?.call(statistics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadError,
    TResult Function(Statistics statistics)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(statistics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatisticsInitial value) initial,
    required TResult Function(StatisticsLoading value) loading,
    required TResult Function(StatisticsLoadError value) loadError,
    required TResult Function(StatisticsLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatisticsInitial value)? initial,
    TResult? Function(StatisticsLoading value)? loading,
    TResult? Function(StatisticsLoadError value)? loadError,
    TResult? Function(StatisticsLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatisticsInitial value)? initial,
    TResult Function(StatisticsLoading value)? loading,
    TResult Function(StatisticsLoadError value)? loadError,
    TResult Function(StatisticsLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class StatisticsLoadSuccess implements StatisticsState {
  const factory StatisticsLoadSuccess(final Statistics statistics) =
      _$StatisticsLoadSuccessImpl;

  Statistics get statistics;
  @JsonKey(ignore: true)
  _$$StatisticsLoadSuccessImplCopyWith<_$StatisticsLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
