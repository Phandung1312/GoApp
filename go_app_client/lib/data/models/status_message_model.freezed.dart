// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatusMessageModel _$StatusMessageModelFromJson(Map<String, dynamic> json) {
  return _StatusMessageModel.fromJson(json);
}

/// @nodoc
mixin _$StatusMessageModel {
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusMessageModelCopyWith<StatusMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusMessageModelCopyWith<$Res> {
  factory $StatusMessageModelCopyWith(
          StatusMessageModel value, $Res Function(StatusMessageModel) then) =
      _$StatusMessageModelCopyWithImpl<$Res, StatusMessageModel>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$StatusMessageModelCopyWithImpl<$Res, $Val extends StatusMessageModel>
    implements $StatusMessageModelCopyWith<$Res> {
  _$StatusMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatusMessageModelImplCopyWith<$Res>
    implements $StatusMessageModelCopyWith<$Res> {
  factory _$$StatusMessageModelImplCopyWith(_$StatusMessageModelImpl value,
          $Res Function(_$StatusMessageModelImpl) then) =
      __$$StatusMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$StatusMessageModelImplCopyWithImpl<$Res>
    extends _$StatusMessageModelCopyWithImpl<$Res, _$StatusMessageModelImpl>
    implements _$$StatusMessageModelImplCopyWith<$Res> {
  __$$StatusMessageModelImplCopyWithImpl(_$StatusMessageModelImpl _value,
      $Res Function(_$StatusMessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$StatusMessageModelImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusMessageModelImpl implements _StatusMessageModel {
  const _$StatusMessageModelImpl(this.message);

  factory _$StatusMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusMessageModelImplFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'StatusMessageModel(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusMessageModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusMessageModelImplCopyWith<_$StatusMessageModelImpl> get copyWith =>
      __$$StatusMessageModelImplCopyWithImpl<_$StatusMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusMessageModelImplToJson(
      this,
    );
  }
}

abstract class _StatusMessageModel implements StatusMessageModel {
  const factory _StatusMessageModel(final String? message) =
      _$StatusMessageModelImpl;

  factory _StatusMessageModel.fromJson(Map<String, dynamic> json) =
      _$StatusMessageModelImpl.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$StatusMessageModelImplCopyWith<_$StatusMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
