// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginInfoModel _$LoginInfoModelFromJson(Map<String, dynamic> json) {
  return _LoginInfoModel.fromJson(json);
}

/// @nodoc
mixin _$LoginInfoModel {
  DataModel? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginInfoModelCopyWith<LoginInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginInfoModelCopyWith<$Res> {
  factory $LoginInfoModelCopyWith(
          LoginInfoModel value, $Res Function(LoginInfoModel) then) =
      _$LoginInfoModelCopyWithImpl<$Res, LoginInfoModel>;
  @useResult
  $Res call({DataModel? data, String? message});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginInfoModelCopyWithImpl<$Res, $Val extends LoginInfoModel>
    implements $LoginInfoModelCopyWith<$Res> {
  _$LoginInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginInfoModelImplCopyWith<$Res>
    implements $LoginInfoModelCopyWith<$Res> {
  factory _$$LoginInfoModelImplCopyWith(_$LoginInfoModelImpl value,
          $Res Function(_$LoginInfoModelImpl) then) =
      __$$LoginInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataModel? data, String? message});

  @override
  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$LoginInfoModelImplCopyWithImpl<$Res>
    extends _$LoginInfoModelCopyWithImpl<$Res, _$LoginInfoModelImpl>
    implements _$$LoginInfoModelImplCopyWith<$Res> {
  __$$LoginInfoModelImplCopyWithImpl(
      _$LoginInfoModelImpl _value, $Res Function(_$LoginInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$LoginInfoModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginInfoModelImpl implements _LoginInfoModel {
  const _$LoginInfoModelImpl({this.data, this.message});

  factory _$LoginInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginInfoModelImplFromJson(json);

  @override
  final DataModel? data;
  @override
  final String? message;

  @override
  String toString() {
    return 'LoginInfoModel(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginInfoModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginInfoModelImplCopyWith<_$LoginInfoModelImpl> get copyWith =>
      __$$LoginInfoModelImplCopyWithImpl<_$LoginInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginInfoModelImplToJson(
      this,
    );
  }
}

abstract class _LoginInfoModel implements LoginInfoModel {
  const factory _LoginInfoModel(
      {final DataModel? data, final String? message}) = _$LoginInfoModelImpl;

  factory _LoginInfoModel.fromJson(Map<String, dynamic> json) =
      _$LoginInfoModelImpl.fromJson;

  @override
  DataModel? get data;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$LoginInfoModelImplCopyWith<_$LoginInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @AccountStatusConverter()
  AccountStatus? get status => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res, DataModel>;
  @useResult
  $Res call({@AccountStatusConverter() AccountStatus? status, String? role});
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res, $Val extends DataModel>
    implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatus?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataModelImplCopyWith<$Res>
    implements $DataModelCopyWith<$Res> {
  factory _$$DataModelImplCopyWith(
          _$DataModelImpl value, $Res Function(_$DataModelImpl) then) =
      __$$DataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@AccountStatusConverter() AccountStatus? status, String? role});
}

/// @nodoc
class __$$DataModelImplCopyWithImpl<$Res>
    extends _$DataModelCopyWithImpl<$Res, _$DataModelImpl>
    implements _$$DataModelImplCopyWith<$Res> {
  __$$DataModelImplCopyWithImpl(
      _$DataModelImpl _value, $Res Function(_$DataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? role = freezed,
  }) {
    return _then(_$DataModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatus?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl implements _DataModel {
  const _$DataModelImpl({@AccountStatusConverter() this.status, this.role});

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  @override
  @AccountStatusConverter()
  final AccountStatus? status;
  @override
  final String? role;

  @override
  String toString() {
    return 'DataModel(status: $status, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      __$$DataModelImplCopyWithImpl<_$DataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataModelImplToJson(
      this,
    );
  }
}

abstract class _DataModel implements DataModel {
  const factory _DataModel(
      {@AccountStatusConverter() final AccountStatus? status,
      final String? role}) = _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @AccountStatusConverter()
  AccountStatus? get status;
  @override
  String? get role;
  @override
  @JsonKey(ignore: true)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
