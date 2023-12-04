// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_autocomplete_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapAutoCompleteModel _$MapAutoCompleteModelFromJson(Map<String, dynamic> json) {
  return _MapAutoCompleteModel.fromJson(json);
}

/// @nodoc
mixin _$MapAutoCompleteModel {
// ignore: invalid_annotation_target
  @JsonKey(name: 'ref_id')
  String? get refId => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get display => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapAutoCompleteModelCopyWith<MapAutoCompleteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapAutoCompleteModelCopyWith<$Res> {
  factory $MapAutoCompleteModelCopyWith(MapAutoCompleteModel value,
          $Res Function(MapAutoCompleteModel) then) =
      _$MapAutoCompleteModelCopyWithImpl<$Res, MapAutoCompleteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ref_id') String? refId,
      String? address,
      String? name,
      String? display});
}

/// @nodoc
class _$MapAutoCompleteModelCopyWithImpl<$Res,
        $Val extends MapAutoCompleteModel>
    implements $MapAutoCompleteModelCopyWith<$Res> {
  _$MapAutoCompleteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refId = freezed,
    Object? address = freezed,
    Object? name = freezed,
    Object? display = freezed,
  }) {
    return _then(_value.copyWith(
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapAutoCompleteModelImplCopyWith<$Res>
    implements $MapAutoCompleteModelCopyWith<$Res> {
  factory _$$MapAutoCompleteModelImplCopyWith(_$MapAutoCompleteModelImpl value,
          $Res Function(_$MapAutoCompleteModelImpl) then) =
      __$$MapAutoCompleteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ref_id') String? refId,
      String? address,
      String? name,
      String? display});
}

/// @nodoc
class __$$MapAutoCompleteModelImplCopyWithImpl<$Res>
    extends _$MapAutoCompleteModelCopyWithImpl<$Res, _$MapAutoCompleteModelImpl>
    implements _$$MapAutoCompleteModelImplCopyWith<$Res> {
  __$$MapAutoCompleteModelImplCopyWithImpl(_$MapAutoCompleteModelImpl _value,
      $Res Function(_$MapAutoCompleteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refId = freezed,
    Object? address = freezed,
    Object? name = freezed,
    Object? display = freezed,
  }) {
    return _then(_$MapAutoCompleteModelImpl(
      freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapAutoCompleteModelImpl implements _MapAutoCompleteModel {
  const _$MapAutoCompleteModelImpl(@JsonKey(name: 'ref_id') this.refId,
      this.address, this.name, this.display);

  factory _$MapAutoCompleteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapAutoCompleteModelImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'ref_id')
  final String? refId;
  @override
  final String? address;
  @override
  final String? name;
  @override
  final String? display;

  @override
  String toString() {
    return 'MapAutoCompleteModel(refId: $refId, address: $address, name: $name, display: $display)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapAutoCompleteModelImpl &&
            (identical(other.refId, refId) || other.refId == refId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.display, display) || other.display == display));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refId, address, name, display);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapAutoCompleteModelImplCopyWith<_$MapAutoCompleteModelImpl>
      get copyWith =>
          __$$MapAutoCompleteModelImplCopyWithImpl<_$MapAutoCompleteModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapAutoCompleteModelImplToJson(
      this,
    );
  }
}

abstract class _MapAutoCompleteModel implements MapAutoCompleteModel {
  const factory _MapAutoCompleteModel(
      @JsonKey(name: 'ref_id') final String? refId,
      final String? address,
      final String? name,
      final String? display) = _$MapAutoCompleteModelImpl;

  factory _MapAutoCompleteModel.fromJson(Map<String, dynamic> json) =
      _$MapAutoCompleteModelImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'ref_id')
  String? get refId;
  @override
  String? get address;
  @override
  String? get name;
  @override
  String? get display;
  @override
  @JsonKey(ignore: true)
  _$$MapAutoCompleteModelImplCopyWith<_$MapAutoCompleteModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
