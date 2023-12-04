// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'path_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PathEntity {
  num get distance => throw _privateConstructorUsedError;
  num get weight => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  LatLngBounds? get focus => throw _privateConstructorUsedError;
  List<LatLng> get points => throw _privateConstructorUsedError;
  List<Instruction> get instruction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PathEntityCopyWith<PathEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathEntityCopyWith<$Res> {
  factory $PathEntityCopyWith(
          PathEntity value, $Res Function(PathEntity) then) =
      _$PathEntityCopyWithImpl<$Res, PathEntity>;
  @useResult
  $Res call(
      {num distance,
      num weight,
      int time,
      LatLngBounds? focus,
      List<LatLng> points,
      List<Instruction> instruction});
}

/// @nodoc
class _$PathEntityCopyWithImpl<$Res, $Val extends PathEntity>
    implements $PathEntityCopyWith<$Res> {
  _$PathEntityCopyWithImpl(this._value, this._then);

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
    Object? focus = freezed,
    Object? points = null,
    Object? instruction = null,
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
      focus: freezed == focus
          ? _value.focus
          : focus // ignore: cast_nullable_to_non_nullable
              as LatLngBounds?,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      instruction: null == instruction
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as List<Instruction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PathEntityImplCopyWith<$Res>
    implements $PathEntityCopyWith<$Res> {
  factory _$$PathEntityImplCopyWith(
          _$PathEntityImpl value, $Res Function(_$PathEntityImpl) then) =
      __$$PathEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num distance,
      num weight,
      int time,
      LatLngBounds? focus,
      List<LatLng> points,
      List<Instruction> instruction});
}

/// @nodoc
class __$$PathEntityImplCopyWithImpl<$Res>
    extends _$PathEntityCopyWithImpl<$Res, _$PathEntityImpl>
    implements _$$PathEntityImplCopyWith<$Res> {
  __$$PathEntityImplCopyWithImpl(
      _$PathEntityImpl _value, $Res Function(_$PathEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? weight = null,
    Object? time = null,
    Object? focus = freezed,
    Object? points = null,
    Object? instruction = null,
  }) {
    return _then(_$PathEntityImpl(
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
      focus: freezed == focus
          ? _value.focus
          : focus // ignore: cast_nullable_to_non_nullable
              as LatLngBounds?,
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      instruction: null == instruction
          ? _value._instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as List<Instruction>,
    ));
  }
}

/// @nodoc

class _$PathEntityImpl implements _PathEntity {
  const _$PathEntityImpl(
      {this.distance = 0,
      this.weight = 0,
      this.time = 0,
      this.focus,
      final List<LatLng> points = const <LatLng>[],
      final List<Instruction> instruction = const <Instruction>[]})
      : _points = points,
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
  final LatLngBounds? focus;
  final List<LatLng> _points;
  @override
  @JsonKey()
  List<LatLng> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  final List<Instruction> _instruction;
  @override
  @JsonKey()
  List<Instruction> get instruction {
    if (_instruction is EqualUnmodifiableListView) return _instruction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instruction);
  }

  @override
  String toString() {
    return 'PathEntity(distance: $distance, weight: $weight, time: $time, focus: $focus, points: $points, instruction: $instruction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PathEntityImpl &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.focus, focus) || other.focus == focus) &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            const DeepCollectionEquality()
                .equals(other._instruction, _instruction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      distance,
      weight,
      time,
      focus,
      const DeepCollectionEquality().hash(_points),
      const DeepCollectionEquality().hash(_instruction));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PathEntityImplCopyWith<_$PathEntityImpl> get copyWith =>
      __$$PathEntityImplCopyWithImpl<_$PathEntityImpl>(this, _$identity);
}

abstract class _PathEntity implements PathEntity {
  const factory _PathEntity(
      {final num distance,
      final num weight,
      final int time,
      final LatLngBounds? focus,
      final List<LatLng> points,
      final List<Instruction> instruction}) = _$PathEntityImpl;

  @override
  num get distance;
  @override
  num get weight;
  @override
  int get time;
  @override
  LatLngBounds? get focus;
  @override
  List<LatLng> get points;
  @override
  List<Instruction> get instruction;
  @override
  @JsonKey(ignore: true)
  _$$PathEntityImplCopyWith<_$PathEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
