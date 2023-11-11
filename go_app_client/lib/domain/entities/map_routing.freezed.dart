// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_routing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapRouting {
  String get license => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<Path> get paths => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapRoutingCopyWith<MapRouting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapRoutingCopyWith<$Res> {
  factory $MapRoutingCopyWith(
          MapRouting value, $Res Function(MapRouting) then) =
      _$MapRoutingCopyWithImpl<$Res, MapRouting>;
  @useResult
  $Res call({String license, String code, String message, List<Path> paths});
}

/// @nodoc
class _$MapRoutingCopyWithImpl<$Res, $Val extends MapRouting>
    implements $MapRoutingCopyWith<$Res> {
  _$MapRoutingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? license = null,
    Object? code = null,
    Object? message = null,
    Object? paths = null,
  }) {
    return _then(_value.copyWith(
      license: null == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      paths: null == paths
          ? _value.paths
          : paths // ignore: cast_nullable_to_non_nullable
              as List<Path>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapRoutingImplCopyWith<$Res>
    implements $MapRoutingCopyWith<$Res> {
  factory _$$MapRoutingImplCopyWith(
          _$MapRoutingImpl value, $Res Function(_$MapRoutingImpl) then) =
      __$$MapRoutingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String license, String code, String message, List<Path> paths});
}

/// @nodoc
class __$$MapRoutingImplCopyWithImpl<$Res>
    extends _$MapRoutingCopyWithImpl<$Res, _$MapRoutingImpl>
    implements _$$MapRoutingImplCopyWith<$Res> {
  __$$MapRoutingImplCopyWithImpl(
      _$MapRoutingImpl _value, $Res Function(_$MapRoutingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? license = null,
    Object? code = null,
    Object? message = null,
    Object? paths = null,
  }) {
    return _then(_$MapRoutingImpl(
      license: null == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      paths: null == paths
          ? _value._paths
          : paths // ignore: cast_nullable_to_non_nullable
              as List<Path>,
    ));
  }
}

/// @nodoc

class _$MapRoutingImpl implements _MapRouting {
  const _$MapRoutingImpl(
      {this.license = '',
      this.code = '',
      this.message = '',
      final List<Path> paths = const <Path>[]})
      : _paths = paths;

  @override
  @JsonKey()
  final String license;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String message;
  final List<Path> _paths;
  @override
  @JsonKey()
  List<Path> get paths {
    if (_paths is EqualUnmodifiableListView) return _paths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paths);
  }

  @override
  String toString() {
    return 'MapRouting(license: $license, code: $code, message: $message, paths: $paths)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapRoutingImpl &&
            (identical(other.license, license) || other.license == license) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._paths, _paths));
  }

  @override
  int get hashCode => Object.hash(runtimeType, license, code, message,
      const DeepCollectionEquality().hash(_paths));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapRoutingImplCopyWith<_$MapRoutingImpl> get copyWith =>
      __$$MapRoutingImplCopyWithImpl<_$MapRoutingImpl>(this, _$identity);
}

abstract class _MapRouting implements MapRouting {
  const factory _MapRouting(
      {final String license,
      final String code,
      final String message,
      final List<Path> paths}) = _$MapRoutingImpl;

  @override
  String get license;
  @override
  String get code;
  @override
  String get message;
  @override
  List<Path> get paths;
  @override
  @JsonKey(ignore: true)
  _$$MapRoutingImplCopyWith<_$MapRoutingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
