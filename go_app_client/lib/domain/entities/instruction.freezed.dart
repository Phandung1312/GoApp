// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instruction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Instruction {
  num get distance => throw _privateConstructorUsedError;
  num get heading => throw _privateConstructorUsedError;
  num get sign => throw _privateConstructorUsedError;
  List<num> get interval => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  num get time => throw _privateConstructorUsedError;
  String get streetName => throw _privateConstructorUsedError;
  num get lastHeading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InstructionCopyWith<Instruction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructionCopyWith<$Res> {
  factory $InstructionCopyWith(
          Instruction value, $Res Function(Instruction) then) =
      _$InstructionCopyWithImpl<$Res, Instruction>;
  @useResult
  $Res call(
      {num distance,
      num heading,
      num sign,
      List<num> interval,
      String text,
      num time,
      String streetName,
      num lastHeading});
}

/// @nodoc
class _$InstructionCopyWithImpl<$Res, $Val extends Instruction>
    implements $InstructionCopyWith<$Res> {
  _$InstructionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? heading = null,
    Object? sign = null,
    Object? interval = null,
    Object? text = null,
    Object? time = null,
    Object? streetName = null,
    Object? lastHeading = null,
  }) {
    return _then(_value.copyWith(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as num,
      heading: null == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as num,
      sign: null == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as num,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as List<num>,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as num,
      streetName: null == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String,
      lastHeading: null == lastHeading
          ? _value.lastHeading
          : lastHeading // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstructionImplCopyWith<$Res>
    implements $InstructionCopyWith<$Res> {
  factory _$$InstructionImplCopyWith(
          _$InstructionImpl value, $Res Function(_$InstructionImpl) then) =
      __$$InstructionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num distance,
      num heading,
      num sign,
      List<num> interval,
      String text,
      num time,
      String streetName,
      num lastHeading});
}

/// @nodoc
class __$$InstructionImplCopyWithImpl<$Res>
    extends _$InstructionCopyWithImpl<$Res, _$InstructionImpl>
    implements _$$InstructionImplCopyWith<$Res> {
  __$$InstructionImplCopyWithImpl(
      _$InstructionImpl _value, $Res Function(_$InstructionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? heading = null,
    Object? sign = null,
    Object? interval = null,
    Object? text = null,
    Object? time = null,
    Object? streetName = null,
    Object? lastHeading = null,
  }) {
    return _then(_$InstructionImpl(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as num,
      heading: null == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as num,
      sign: null == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as num,
      interval: null == interval
          ? _value._interval
          : interval // ignore: cast_nullable_to_non_nullable
              as List<num>,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as num,
      streetName: null == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String,
      lastHeading: null == lastHeading
          ? _value.lastHeading
          : lastHeading // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$InstructionImpl implements _Instruction {
  const _$InstructionImpl(
      {this.distance = 0,
      this.heading = 0,
      this.sign = 0,
      final List<num> interval = const <num>[],
      this.text = '',
      this.time = 0,
      this.streetName = '',
      this.lastHeading = 0})
      : _interval = interval;

  @override
  @JsonKey()
  final num distance;
  @override
  @JsonKey()
  final num heading;
  @override
  @JsonKey()
  final num sign;
  final List<num> _interval;
  @override
  @JsonKey()
  List<num> get interval {
    if (_interval is EqualUnmodifiableListView) return _interval;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interval);
  }

  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final num time;
  @override
  @JsonKey()
  final String streetName;
  @override
  @JsonKey()
  final num lastHeading;

  @override
  String toString() {
    return 'Instruction(distance: $distance, heading: $heading, sign: $sign, interval: $interval, text: $text, time: $time, streetName: $streetName, lastHeading: $lastHeading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstructionImpl &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.heading, heading) || other.heading == heading) &&
            (identical(other.sign, sign) || other.sign == sign) &&
            const DeepCollectionEquality().equals(other._interval, _interval) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.streetName, streetName) ||
                other.streetName == streetName) &&
            (identical(other.lastHeading, lastHeading) ||
                other.lastHeading == lastHeading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      distance,
      heading,
      sign,
      const DeepCollectionEquality().hash(_interval),
      text,
      time,
      streetName,
      lastHeading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InstructionImplCopyWith<_$InstructionImpl> get copyWith =>
      __$$InstructionImplCopyWithImpl<_$InstructionImpl>(this, _$identity);
}

abstract class _Instruction implements Instruction {
  const factory _Instruction(
      {final num distance,
      final num heading,
      final num sign,
      final List<num> interval,
      final String text,
      final num time,
      final String streetName,
      final num lastHeading}) = _$InstructionImpl;

  @override
  num get distance;
  @override
  num get heading;
  @override
  num get sign;
  @override
  List<num> get interval;
  @override
  String get text;
  @override
  num get time;
  @override
  String get streetName;
  @override
  num get lastHeading;
  @override
  @JsonKey(ignore: true)
  _$$InstructionImplCopyWith<_$InstructionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
