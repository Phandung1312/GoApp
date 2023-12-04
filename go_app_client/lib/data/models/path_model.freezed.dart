// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'path_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PathModel _$PathModelFromJson(Map<String, dynamic> json) {
  return _PathModel.fromJson(json);
}

/// @nodoc
mixin _$PathModel {
  num? get distance => throw _privateConstructorUsedError;
  num? get weight => throw _privateConstructorUsedError;
  int? get time => throw _privateConstructorUsedError;
  int? get transfers =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'points_encoded')
  bool? get pointsEncoded => throw _privateConstructorUsedError;
  List<double>? get bbox => throw _privateConstructorUsedError;
  String? get points => throw _privateConstructorUsedError;
  List<InstructionModel>? get instructions =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'snapped_waypoints')
  String? get snappedWaypoints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PathModelCopyWith<PathModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathModelCopyWith<$Res> {
  factory $PathModelCopyWith(PathModel value, $Res Function(PathModel) then) =
      _$PathModelCopyWithImpl<$Res, PathModel>;
  @useResult
  $Res call(
      {num? distance,
      num? weight,
      int? time,
      int? transfers,
      @JsonKey(name: 'points_encoded') bool? pointsEncoded,
      List<double>? bbox,
      String? points,
      List<InstructionModel>? instructions,
      @JsonKey(name: 'snapped_waypoints') String? snappedWaypoints});
}

/// @nodoc
class _$PathModelCopyWithImpl<$Res, $Val extends PathModel>
    implements $PathModelCopyWith<$Res> {
  _$PathModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = freezed,
    Object? weight = freezed,
    Object? time = freezed,
    Object? transfers = freezed,
    Object? pointsEncoded = freezed,
    Object? bbox = freezed,
    Object? points = freezed,
    Object? instructions = freezed,
    Object? snappedWaypoints = freezed,
  }) {
    return _then(_value.copyWith(
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as num?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as num?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      transfers: freezed == transfers
          ? _value.transfers
          : transfers // ignore: cast_nullable_to_non_nullable
              as int?,
      pointsEncoded: freezed == pointsEncoded
          ? _value.pointsEncoded
          : pointsEncoded // ignore: cast_nullable_to_non_nullable
              as bool?,
      bbox: freezed == bbox
          ? _value.bbox
          : bbox // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<InstructionModel>?,
      snappedWaypoints: freezed == snappedWaypoints
          ? _value.snappedWaypoints
          : snappedWaypoints // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PathModelImplCopyWith<$Res>
    implements $PathModelCopyWith<$Res> {
  factory _$$PathModelImplCopyWith(
          _$PathModelImpl value, $Res Function(_$PathModelImpl) then) =
      __$$PathModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? distance,
      num? weight,
      int? time,
      int? transfers,
      @JsonKey(name: 'points_encoded') bool? pointsEncoded,
      List<double>? bbox,
      String? points,
      List<InstructionModel>? instructions,
      @JsonKey(name: 'snapped_waypoints') String? snappedWaypoints});
}

/// @nodoc
class __$$PathModelImplCopyWithImpl<$Res>
    extends _$PathModelCopyWithImpl<$Res, _$PathModelImpl>
    implements _$$PathModelImplCopyWith<$Res> {
  __$$PathModelImplCopyWithImpl(
      _$PathModelImpl _value, $Res Function(_$PathModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = freezed,
    Object? weight = freezed,
    Object? time = freezed,
    Object? transfers = freezed,
    Object? pointsEncoded = freezed,
    Object? bbox = freezed,
    Object? points = freezed,
    Object? instructions = freezed,
    Object? snappedWaypoints = freezed,
  }) {
    return _then(_$PathModelImpl(
      freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == transfers
          ? _value.transfers
          : transfers // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == pointsEncoded
          ? _value.pointsEncoded
          : pointsEncoded // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == bbox
          ? _value._bbox
          : bbox // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == instructions
          ? _value._instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<InstructionModel>?,
      freezed == snappedWaypoints
          ? _value.snappedWaypoints
          : snappedWaypoints // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PathModelImpl extends _PathModel {
  const _$PathModelImpl(
      this.distance,
      this.weight,
      this.time,
      this.transfers,
      @JsonKey(name: 'points_encoded') this.pointsEncoded,
      final List<double>? bbox,
      this.points,
      final List<InstructionModel>? instructions,
      @JsonKey(name: 'snapped_waypoints') this.snappedWaypoints)
      : _bbox = bbox,
        _instructions = instructions,
        super._();

  factory _$PathModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PathModelImplFromJson(json);

  @override
  final num? distance;
  @override
  final num? weight;
  @override
  final int? time;
  @override
  final int? transfers;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'points_encoded')
  final bool? pointsEncoded;
  final List<double>? _bbox;
  @override
  List<double>? get bbox {
    final value = _bbox;
    if (value == null) return null;
    if (_bbox is EqualUnmodifiableListView) return _bbox;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? points;
  final List<InstructionModel>? _instructions;
  @override
  List<InstructionModel>? get instructions {
    final value = _instructions;
    if (value == null) return null;
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'snapped_waypoints')
  final String? snappedWaypoints;

  @override
  String toString() {
    return 'PathModel(distance: $distance, weight: $weight, time: $time, transfers: $transfers, pointsEncoded: $pointsEncoded, bbox: $bbox, points: $points, instructions: $instructions, snappedWaypoints: $snappedWaypoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PathModelImpl &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.transfers, transfers) ||
                other.transfers == transfers) &&
            (identical(other.pointsEncoded, pointsEncoded) ||
                other.pointsEncoded == pointsEncoded) &&
            const DeepCollectionEquality().equals(other._bbox, _bbox) &&
            (identical(other.points, points) || other.points == points) &&
            const DeepCollectionEquality()
                .equals(other._instructions, _instructions) &&
            (identical(other.snappedWaypoints, snappedWaypoints) ||
                other.snappedWaypoints == snappedWaypoints));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      distance,
      weight,
      time,
      transfers,
      pointsEncoded,
      const DeepCollectionEquality().hash(_bbox),
      points,
      const DeepCollectionEquality().hash(_instructions),
      snappedWaypoints);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PathModelImplCopyWith<_$PathModelImpl> get copyWith =>
      __$$PathModelImplCopyWithImpl<_$PathModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PathModelImplToJson(
      this,
    );
  }
}

abstract class _PathModel extends PathModel {
  const factory _PathModel(
          final num? distance,
          final num? weight,
          final int? time,
          final int? transfers,
          @JsonKey(name: 'points_encoded') final bool? pointsEncoded,
          final List<double>? bbox,
          final String? points,
          final List<InstructionModel>? instructions,
          @JsonKey(name: 'snapped_waypoints') final String? snappedWaypoints) =
      _$PathModelImpl;
  const _PathModel._() : super._();

  factory _PathModel.fromJson(Map<String, dynamic> json) =
      _$PathModelImpl.fromJson;

  @override
  num? get distance;
  @override
  num? get weight;
  @override
  int? get time;
  @override
  int? get transfers;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'points_encoded')
  bool? get pointsEncoded;
  @override
  List<double>? get bbox;
  @override
  String? get points;
  @override
  List<InstructionModel>? get instructions;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'snapped_waypoints')
  String? get snappedWaypoints;
  @override
  @JsonKey(ignore: true)
  _$$PathModelImplCopyWith<_$PathModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
