// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DriverStatusModel _$DriverStatusModelFromJson(Map<String, dynamic> json) {
  return _DriverStatusModel.fromJson(json);
}

/// @nodoc
mixin _$DriverStatusModel {
  int? get driverId => throw _privateConstructorUsedError;
  @DriverStatusConverter()
  DriverStatus? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverStatusModelCopyWith<DriverStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverStatusModelCopyWith<$Res> {
  factory $DriverStatusModelCopyWith(
          DriverStatusModel value, $Res Function(DriverStatusModel) then) =
      _$DriverStatusModelCopyWithImpl<$Res, DriverStatusModel>;
  @useResult
  $Res call({int? driverId, @DriverStatusConverter() DriverStatus? status});
}

/// @nodoc
class _$DriverStatusModelCopyWithImpl<$Res, $Val extends DriverStatusModel>
    implements $DriverStatusModelCopyWith<$Res> {
  _$DriverStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverId = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DriverStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DriverStatusModelImplCopyWith<$Res>
    implements $DriverStatusModelCopyWith<$Res> {
  factory _$$DriverStatusModelImplCopyWith(_$DriverStatusModelImpl value,
          $Res Function(_$DriverStatusModelImpl) then) =
      __$$DriverStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? driverId, @DriverStatusConverter() DriverStatus? status});
}

/// @nodoc
class __$$DriverStatusModelImplCopyWithImpl<$Res>
    extends _$DriverStatusModelCopyWithImpl<$Res, _$DriverStatusModelImpl>
    implements _$$DriverStatusModelImplCopyWith<$Res> {
  __$$DriverStatusModelImplCopyWithImpl(_$DriverStatusModelImpl _value,
      $Res Function(_$DriverStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverId = freezed,
    Object? status = freezed,
  }) {
    return _then(_$DriverStatusModelImpl(
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DriverStatus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverStatusModelImpl implements _DriverStatusModel {
  const _$DriverStatusModelImpl(
      {this.driverId, @DriverStatusConverter() this.status});

  factory _$DriverStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverStatusModelImplFromJson(json);

  @override
  final int? driverId;
  @override
  @DriverStatusConverter()
  final DriverStatus? status;

  @override
  String toString() {
    return 'DriverStatusModel(driverId: $driverId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverStatusModelImpl &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, driverId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverStatusModelImplCopyWith<_$DriverStatusModelImpl> get copyWith =>
      __$$DriverStatusModelImplCopyWithImpl<_$DriverStatusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverStatusModelImplToJson(
      this,
    );
  }
}

abstract class _DriverStatusModel implements DriverStatusModel {
  const factory _DriverStatusModel(
          {final int? driverId,
          @DriverStatusConverter() final DriverStatus? status}) =
      _$DriverStatusModelImpl;

  factory _DriverStatusModel.fromJson(Map<String, dynamic> json) =
      _$DriverStatusModelImpl.fromJson;

  @override
  int? get driverId;
  @override
  @DriverStatusConverter()
  DriverStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$$DriverStatusModelImplCopyWith<_$DriverStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
