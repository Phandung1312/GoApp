// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_reverse_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapReverseModel _$MapReverseModelFromJson(Map<String, dynamic> json) {
  return _MapReverseModel.fromJson(json);
}

/// @nodoc
mixin _$MapReverseModel {
// ignore: invalid_annotation_target
  @JsonKey(name: 'ref_id')
  String? get refId => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get display => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapReverseModelCopyWith<MapReverseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapReverseModelCopyWith<$Res> {
  factory $MapReverseModelCopyWith(
          MapReverseModel value, $Res Function(MapReverseModel) then) =
      _$MapReverseModelCopyWithImpl<$Res, MapReverseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ref_id') String? refId,
      String? address,
      String? name,
      String? display,
      double? distance,
      double? lat,
      double? lng});
}

/// @nodoc
class _$MapReverseModelCopyWithImpl<$Res, $Val extends MapReverseModel>
    implements $MapReverseModelCopyWith<$Res> {
  _$MapReverseModelCopyWithImpl(this._value, this._then);

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
    Object? distance = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
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
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapReverseModelImplCopyWith<$Res>
    implements $MapReverseModelCopyWith<$Res> {
  factory _$$MapReverseModelImplCopyWith(_$MapReverseModelImpl value,
          $Res Function(_$MapReverseModelImpl) then) =
      __$$MapReverseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ref_id') String? refId,
      String? address,
      String? name,
      String? display,
      double? distance,
      double? lat,
      double? lng});
}

/// @nodoc
class __$$MapReverseModelImplCopyWithImpl<$Res>
    extends _$MapReverseModelCopyWithImpl<$Res, _$MapReverseModelImpl>
    implements _$$MapReverseModelImplCopyWith<$Res> {
  __$$MapReverseModelImplCopyWithImpl(
      _$MapReverseModelImpl _value, $Res Function(_$MapReverseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refId = freezed,
    Object? address = freezed,
    Object? name = freezed,
    Object? display = freezed,
    Object? distance = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$MapReverseModelImpl(
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
      freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapReverseModelImpl implements _MapReverseModel {
  const _$MapReverseModelImpl(@JsonKey(name: 'ref_id') this.refId, this.address,
      this.name, this.display, this.distance, this.lat, this.lng);

  factory _$MapReverseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapReverseModelImplFromJson(json);

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
  final double? distance;
  @override
  final double? lat;
  @override
  final double? lng;

  @override
  String toString() {
    return 'MapReverseModel(refId: $refId, address: $address, name: $name, display: $display, distance: $distance, lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapReverseModelImpl &&
            (identical(other.refId, refId) || other.refId == refId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, refId, address, name, display, distance, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapReverseModelImplCopyWith<_$MapReverseModelImpl> get copyWith =>
      __$$MapReverseModelImplCopyWithImpl<_$MapReverseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapReverseModelImplToJson(
      this,
    );
  }
}

abstract class _MapReverseModel implements MapReverseModel {
  const factory _MapReverseModel(
      @JsonKey(name: 'ref_id') final String? refId,
      final String? address,
      final String? name,
      final String? display,
      final double? distance,
      final double? lat,
      final double? lng) = _$MapReverseModelImpl;

  factory _MapReverseModel.fromJson(Map<String, dynamic> json) =
      _$MapReverseModelImpl.fromJson;

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
  double? get distance;
  @override
  double? get lat;
  @override
  double? get lng;
  @override
  @JsonKey(ignore: true)
  _$$MapReverseModelImplCopyWith<_$MapReverseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
