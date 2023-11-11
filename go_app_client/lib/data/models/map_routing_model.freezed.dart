// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_routing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapRoutingModel _$MapRoutingModelFromJson(Map<String, dynamic> json) {
  return _MapRoutingModel.fromJson(json);
}

/// @nodoc
mixin _$MapRoutingModel {
  String? get license => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get messages => throw _privateConstructorUsedError;
  List<PathModel>? get paths => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapRoutingModelCopyWith<MapRoutingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapRoutingModelCopyWith<$Res> {
  factory $MapRoutingModelCopyWith(
          MapRoutingModel value, $Res Function(MapRoutingModel) then) =
      _$MapRoutingModelCopyWithImpl<$Res, MapRoutingModel>;
  @useResult
  $Res call(
      {String? license,
      String? code,
      String? messages,
      List<PathModel>? paths});
}

/// @nodoc
class _$MapRoutingModelCopyWithImpl<$Res, $Val extends MapRoutingModel>
    implements $MapRoutingModelCopyWith<$Res> {
  _$MapRoutingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? license = freezed,
    Object? code = freezed,
    Object? messages = freezed,
    Object? paths = freezed,
  }) {
    return _then(_value.copyWith(
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as String?,
      paths: freezed == paths
          ? _value.paths
          : paths // ignore: cast_nullable_to_non_nullable
              as List<PathModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapRoutingModelImplCopyWith<$Res>
    implements $MapRoutingModelCopyWith<$Res> {
  factory _$$MapRoutingModelImplCopyWith(_$MapRoutingModelImpl value,
          $Res Function(_$MapRoutingModelImpl) then) =
      __$$MapRoutingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? license,
      String? code,
      String? messages,
      List<PathModel>? paths});
}

/// @nodoc
class __$$MapRoutingModelImplCopyWithImpl<$Res>
    extends _$MapRoutingModelCopyWithImpl<$Res, _$MapRoutingModelImpl>
    implements _$$MapRoutingModelImplCopyWith<$Res> {
  __$$MapRoutingModelImplCopyWithImpl(
      _$MapRoutingModelImpl _value, $Res Function(_$MapRoutingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? license = freezed,
    Object? code = freezed,
    Object? messages = freezed,
    Object? paths = freezed,
  }) {
    return _then(_$MapRoutingModelImpl(
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as String?,
      paths: freezed == paths
          ? _value._paths
          : paths // ignore: cast_nullable_to_non_nullable
              as List<PathModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapRoutingModelImpl extends _MapRoutingModel {
  const _$MapRoutingModelImpl(
      {this.license, this.code, this.messages, final List<PathModel>? paths})
      : _paths = paths,
        super._();

  factory _$MapRoutingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapRoutingModelImplFromJson(json);

  @override
  final String? license;
  @override
  final String? code;
  @override
  final String? messages;
  final List<PathModel>? _paths;
  @override
  List<PathModel>? get paths {
    final value = _paths;
    if (value == null) return null;
    if (_paths is EqualUnmodifiableListView) return _paths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MapRoutingModel(license: $license, code: $code, messages: $messages, paths: $paths)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapRoutingModelImpl &&
            (identical(other.license, license) || other.license == license) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.messages, messages) ||
                other.messages == messages) &&
            const DeepCollectionEquality().equals(other._paths, _paths));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, license, code, messages,
      const DeepCollectionEquality().hash(_paths));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapRoutingModelImplCopyWith<_$MapRoutingModelImpl> get copyWith =>
      __$$MapRoutingModelImplCopyWithImpl<_$MapRoutingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapRoutingModelImplToJson(
      this,
    );
  }
}

abstract class _MapRoutingModel extends MapRoutingModel {
  const factory _MapRoutingModel(
      {final String? license,
      final String? code,
      final String? messages,
      final List<PathModel>? paths}) = _$MapRoutingModelImpl;
  const _MapRoutingModel._() : super._();

  factory _MapRoutingModel.fromJson(Map<String, dynamic> json) =
      _$MapRoutingModelImpl.fromJson;

  @override
  String? get license;
  @override
  String? get code;
  @override
  String? get messages;
  @override
  List<PathModel>? get paths;
  @override
  @JsonKey(ignore: true)
  _$$MapRoutingModelImplCopyWith<_$MapRoutingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
