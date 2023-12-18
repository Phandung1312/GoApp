// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? createSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReviewInitial value) initial,
    required TResult Function(ReviewCreateSuccess value) createSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewInitial value)? initial,
    TResult? Function(ReviewCreateSuccess value)? createSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewInitial value)? initial,
    TResult Function(ReviewCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewStateCopyWith<$Res> {
  factory $ReviewStateCopyWith(
          ReviewState value, $Res Function(ReviewState) then) =
      _$ReviewStateCopyWithImpl<$Res, ReviewState>;
}

/// @nodoc
class _$ReviewStateCopyWithImpl<$Res, $Val extends ReviewState>
    implements $ReviewStateCopyWith<$Res> {
  _$ReviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReviewInitialImplCopyWith<$Res> {
  factory _$$ReviewInitialImplCopyWith(
          _$ReviewInitialImpl value, $Res Function(_$ReviewInitialImpl) then) =
      __$$ReviewInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewInitialImplCopyWithImpl<$Res>
    extends _$ReviewStateCopyWithImpl<$Res, _$ReviewInitialImpl>
    implements _$$ReviewInitialImplCopyWith<$Res> {
  __$$ReviewInitialImplCopyWithImpl(
      _$ReviewInitialImpl _value, $Res Function(_$ReviewInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewInitialImpl implements ReviewInitial {
  const _$ReviewInitialImpl();

  @override
  String toString() {
    return 'ReviewState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReviewInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? createSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createSuccess,
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
    required TResult Function(ReviewInitial value) initial,
    required TResult Function(ReviewCreateSuccess value) createSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewInitial value)? initial,
    TResult? Function(ReviewCreateSuccess value)? createSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewInitial value)? initial,
    TResult Function(ReviewCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ReviewInitial implements ReviewState {
  const factory ReviewInitial() = _$ReviewInitialImpl;
}

/// @nodoc
abstract class _$$ReviewCreateSuccessImplCopyWith<$Res> {
  factory _$$ReviewCreateSuccessImplCopyWith(_$ReviewCreateSuccessImpl value,
          $Res Function(_$ReviewCreateSuccessImpl) then) =
      __$$ReviewCreateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewCreateSuccessImplCopyWithImpl<$Res>
    extends _$ReviewStateCopyWithImpl<$Res, _$ReviewCreateSuccessImpl>
    implements _$$ReviewCreateSuccessImplCopyWith<$Res> {
  __$$ReviewCreateSuccessImplCopyWithImpl(_$ReviewCreateSuccessImpl _value,
      $Res Function(_$ReviewCreateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewCreateSuccessImpl implements ReviewCreateSuccess {
  const _$ReviewCreateSuccessImpl();

  @override
  String toString() {
    return 'ReviewState.createSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewCreateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createSuccess,
  }) {
    return createSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? createSuccess,
  }) {
    return createSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createSuccess,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReviewInitial value) initial,
    required TResult Function(ReviewCreateSuccess value) createSuccess,
  }) {
    return createSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewInitial value)? initial,
    TResult? Function(ReviewCreateSuccess value)? createSuccess,
  }) {
    return createSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewInitial value)? initial,
    TResult Function(ReviewCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class ReviewCreateSuccess implements ReviewState {
  const factory ReviewCreateSuccess() = _$ReviewCreateSuccessImpl;
}
