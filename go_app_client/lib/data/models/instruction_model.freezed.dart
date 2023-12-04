// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instruction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstructionModel _$InstructionModelFromJson(Map<String, dynamic> json) {
  return _InstructionModel.fromJson(json);
}

/// @nodoc
mixin _$InstructionModel {
  num? get distance => throw _privateConstructorUsedError;
  num? get heading => throw _privateConstructorUsedError;
  num? get sign => throw _privateConstructorUsedError;
  List<num>? get interval => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  num? get time =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'street_name')
  String? get streetName =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'last_heading')
  num? get lastHeading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstructionModelCopyWith<InstructionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructionModelCopyWith<$Res> {
  factory $InstructionModelCopyWith(
          InstructionModel value, $Res Function(InstructionModel) then) =
      _$InstructionModelCopyWithImpl<$Res, InstructionModel>;
  @useResult
  $Res call(
      {num? distance,
      num? heading,
      num? sign,
      List<num>? interval,
      String? text,
      num? time,
      @JsonKey(name: 'street_name') String? streetName,
      @JsonKey(name: 'last_heading') num? lastHeading});
}

/// @nodoc
class _$InstructionModelCopyWithImpl<$Res, $Val extends InstructionModel>
    implements $InstructionModelCopyWith<$Res> {
  _$InstructionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = freezed,
    Object? heading = freezed,
    Object? sign = freezed,
    Object? interval = freezed,
    Object? text = freezed,
    Object? time = freezed,
    Object? streetName = freezed,
    Object? lastHeading = freezed,
  }) {
    return _then(_value.copyWith(
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as num?,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as num?,
      sign: freezed == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as num?,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as num?,
      streetName: freezed == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastHeading: freezed == lastHeading
          ? _value.lastHeading
          : lastHeading // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstructionModelImplCopyWith<$Res>
    implements $InstructionModelCopyWith<$Res> {
  factory _$$InstructionModelImplCopyWith(_$InstructionModelImpl value,
          $Res Function(_$InstructionModelImpl) then) =
      __$$InstructionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? distance,
      num? heading,
      num? sign,
      List<num>? interval,
      String? text,
      num? time,
      @JsonKey(name: 'street_name') String? streetName,
      @JsonKey(name: 'last_heading') num? lastHeading});
}

/// @nodoc
class __$$InstructionModelImplCopyWithImpl<$Res>
    extends _$InstructionModelCopyWithImpl<$Res, _$InstructionModelImpl>
    implements _$$InstructionModelImplCopyWith<$Res> {
  __$$InstructionModelImplCopyWithImpl(_$InstructionModelImpl _value,
      $Res Function(_$InstructionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = freezed,
    Object? heading = freezed,
    Object? sign = freezed,
    Object? interval = freezed,
    Object? text = freezed,
    Object? time = freezed,
    Object? streetName = freezed,
    Object? lastHeading = freezed,
  }) {
    return _then(_$InstructionModelImpl(
      freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == interval
          ? _value._interval
          : interval // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == lastHeading
          ? _value.lastHeading
          : lastHeading // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstructionModelImpl extends _InstructionModel {
  const _$InstructionModelImpl(
      this.distance,
      this.heading,
      this.sign,
      final List<num>? interval,
      this.text,
      this.time,
      @JsonKey(name: 'street_name') this.streetName,
      @JsonKey(name: 'last_heading') this.lastHeading)
      : _interval = interval,
        super._();

  factory _$InstructionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstructionModelImplFromJson(json);

  @override
  final num? distance;
  @override
  final num? heading;
  @override
  final num? sign;
  final List<num>? _interval;
  @override
  List<num>? get interval {
    final value = _interval;
    if (value == null) return null;
    if (_interval is EqualUnmodifiableListView) return _interval;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? text;
  @override
  final num? time;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'street_name')
  final String? streetName;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'last_heading')
  final num? lastHeading;

  @override
  String toString() {
    return 'InstructionModel(distance: $distance, heading: $heading, sign: $sign, interval: $interval, text: $text, time: $time, streetName: $streetName, lastHeading: $lastHeading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstructionModelImpl &&
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

  @JsonKey(ignore: true)
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
  _$$InstructionModelImplCopyWith<_$InstructionModelImpl> get copyWith =>
      __$$InstructionModelImplCopyWithImpl<_$InstructionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstructionModelImplToJson(
      this,
    );
  }
}

abstract class _InstructionModel extends InstructionModel {
  const factory _InstructionModel(
          final num? distance,
          final num? heading,
          final num? sign,
          final List<num>? interval,
          final String? text,
          final num? time,
          @JsonKey(name: 'street_name') final String? streetName,
          @JsonKey(name: 'last_heading') final num? lastHeading) =
      _$InstructionModelImpl;
  const _InstructionModel._() : super._();

  factory _InstructionModel.fromJson(Map<String, dynamic> json) =
      _$InstructionModelImpl.fromJson;

  @override
  num? get distance;
  @override
  num? get heading;
  @override
  num? get sign;
  @override
  List<num>? get interval;
  @override
  String? get text;
  @override
  num? get time;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'street_name')
  String? get streetName;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'last_heading')
  num? get lastHeading;
  @override
  @JsonKey(ignore: true)
  _$$InstructionModelImplCopyWith<_$InstructionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
