// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Path {
  num get distance => throw _privateConstructorUsedError;
  num get weight => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  int get transfers => throw _privateConstructorUsedError;
  bool get pointsEncoded => throw _privateConstructorUsedError;
  List<num> get bbox => throw _privateConstructorUsedError;
  String get points => throw _privateConstructorUsedError;
  List<Instruction> get instruction => throw _privateConstructorUsedError;
  String get snappedWaypoints => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PathCopyWith<Path> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathCopyWith<$Res> {
  factory $PathCopyWith(Path value, $Res Function(Path) then) =
      _$PathCopyWithImpl<$Res, Path>;
  @useResult
  $Res call(
      {num distance,
      num weight,
      int time,
      int transfers,
      bool pointsEncoded,
      List<num> bbox,
      String points,
      List<Instruction> instruction,
      String snappedWaypoints});
}

/// @nodoc
class _$PathCopyWithImpl<$Res, $Val extends Path>
    implements $PathCopyWith<$Res> {
  _$PathCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? weight = null,
    Object? time = null,
    Object? transfers = null,
    Object? pointsEncoded = null,
    Object? bbox = null,
    Object? points = null,
    Object? instruction = null,
    Object? snappedWaypoints = null,
  }) {
    return _then(_value.copyWith(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as num,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as num,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      transfers: null == transfers
          ? _value.transfers
          : transfers // ignore: cast_nullable_to_non_nullable
              as int,
      pointsEncoded: null == pointsEncoded
          ? _value.pointsEncoded
          : pointsEncoded // ignore: cast_nullable_to_non_nullable
              as bool,
      bbox: null == bbox
          ? _value.bbox
          : bbox // ignore: cast_nullable_to_non_nullable
              as List<num>,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String,
      instruction: null == instruction
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as List<Instruction>,
      snappedWaypoints: null == snappedWaypoints
          ? _value.snappedWaypoints
          : snappedWaypoints // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PathImplCopyWith<$Res> implements $PathCopyWith<$Res> {
  factory _$$PathImplCopyWith(
          _$PathImpl value, $Res Function(_$PathImpl) then) =
      __$$PathImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num distance,
      num weight,
      int time,
      int transfers,
      bool pointsEncoded,
      List<num> bbox,
      String points,
      List<Instruction> instruction,
      String snappedWaypoints});
}

/// @nodoc
class __$$PathImplCopyWithImpl<$Res>
    extends _$PathCopyWithImpl<$Res, _$PathImpl>
    implements _$$PathImplCopyWith<$Res> {
  __$$PathImplCopyWithImpl(_$PathImpl _value, $Res Function(_$PathImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? weight = null,
    Object? time = null,
    Object? transfers = null,
    Object? pointsEncoded = null,
    Object? bbox = null,
    Object? points = null,
    Object? instruction = null,
    Object? snappedWaypoints = null,
  }) {
    return _then(_$PathImpl(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as num,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as num,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      transfers: null == transfers
          ? _value.transfers
          : transfers // ignore: cast_nullable_to_non_nullable
              as int,
      pointsEncoded: null == pointsEncoded
          ? _value.pointsEncoded
          : pointsEncoded // ignore: cast_nullable_to_non_nullable
              as bool,
      bbox: null == bbox
          ? _value._bbox
          : bbox // ignore: cast_nullable_to_non_nullable
              as List<num>,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String,
      instruction: null == instruction
          ? _value._instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as List<Instruction>,
      snappedWaypoints: null == snappedWaypoints
          ? _value.snappedWaypoints
          : snappedWaypoints // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PathImpl implements _Path {
  const _$PathImpl(
      {this.distance = 0,
      this.weight = 0,
      this.time = 0,
      this.transfers = 0,
      this.pointsEncoded = false,
      final List<num> bbox = const <num>[],
      this.points = '',
      final List<Instruction> instruction = const <Instruction>[],
      this.snappedWaypoints = ''})
      : _bbox = bbox,
        _instruction = instruction;

  @override
  @JsonKey()
  final num distance;
  @override
  @JsonKey()
  final num weight;
  @override
  @JsonKey()
  final int time;
  @override
  @JsonKey()
  final int transfers;
  @override
  @JsonKey()
  final bool pointsEncoded;
  final List<num> _bbox;
  @override
  @JsonKey()
  List<num> get bbox {
    if (_bbox is EqualUnmodifiableListView) return _bbox;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bbox);
  }

  @override
  @JsonKey()
  final String points;
  final List<Instruction> _instruction;
  @override
  @JsonKey()
  List<Instruction> get instruction {
    if (_instruction is EqualUnmodifiableListView) return _instruction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instruction);
  }

  @override
  @JsonKey()
  final String snappedWaypoints;

  @override
  String toString() {
    return 'Path(distance: $distance, weight: $weight, time: $time, transfers: $transfers, pointsEncoded: $pointsEncoded, bbox: $bbox, points: $points, instruction: $instruction, snappedWaypoints: $snappedWaypoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PathImpl &&
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
                .equals(other._instruction, _instruction) &&
            (identical(other.snappedWaypoints, snappedWaypoints) ||
                other.snappedWaypoints == snappedWaypoints));
  }

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
      const DeepCollectionEquality().hash(_instruction),
      snappedWaypoints);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PathImplCopyWith<_$PathImpl> get copyWith =>
      __$$PathImplCopyWithImpl<_$PathImpl>(this, _$identity);
}

abstract class _Path implements Path {
  const factory _Path(
      {final num distance,
      final num weight,
      final int time,
      final int transfers,
      final bool pointsEncoded,
      final List<num> bbox,
      final String points,
      final List<Instruction> instruction,
      final String snappedWaypoints}) = _$PathImpl;

  @override
  num get distance;
  @override
  num get weight;
  @override
  int get time;
  @override
  int get transfers;
  @override
  bool get pointsEncoded;
  @override
  List<num> get bbox;
  @override
  String get points;
  @override
  List<Instruction> get instruction;
  @override
  String get snappedWaypoints;
  @override
  @JsonKey(ignore: true)
  _$$PathImplCopyWith<_$PathImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
