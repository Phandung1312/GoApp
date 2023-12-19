// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientInfoModel _$ClientInfoModelFromJson(Map<String, dynamic> json) {
  return _ClientInfoModel.fromJson(json);
}

/// @nodoc
mixin _$ClientInfoModel {
  int get id => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  num? get dateOfBirth => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  bool? get gender => throw _privateConstructorUsedError;
  bool? get nonBlock => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientInfoModelCopyWith<ClientInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientInfoModelCopyWith<$Res> {
  factory $ClientInfoModelCopyWith(
          ClientInfoModel value, $Res Function(ClientInfoModel) then) =
      _$ClientInfoModelCopyWithImpl<$Res, ClientInfoModel>;
  @useResult
  $Res call(
      {int id,
      String? fullName,
      String? email,
      String? phoneNumber,
      num? dateOfBirth,
      String? avatarUrl,
      bool? gender,
      bool? nonBlock});
}

/// @nodoc
class _$ClientInfoModelCopyWithImpl<$Res, $Val extends ClientInfoModel>
    implements $ClientInfoModelCopyWith<$Res> {
  _$ClientInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? avatarUrl = freezed,
    Object? gender = freezed,
    Object? nonBlock = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as num?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as bool?,
      nonBlock: freezed == nonBlock
          ? _value.nonBlock
          : nonBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientInfoModelImplCopyWith<$Res>
    implements $ClientInfoModelCopyWith<$Res> {
  factory _$$ClientInfoModelImplCopyWith(_$ClientInfoModelImpl value,
          $Res Function(_$ClientInfoModelImpl) then) =
      __$$ClientInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? fullName,
      String? email,
      String? phoneNumber,
      num? dateOfBirth,
      String? avatarUrl,
      bool? gender,
      bool? nonBlock});
}

/// @nodoc
class __$$ClientInfoModelImplCopyWithImpl<$Res>
    extends _$ClientInfoModelCopyWithImpl<$Res, _$ClientInfoModelImpl>
    implements _$$ClientInfoModelImplCopyWith<$Res> {
  __$$ClientInfoModelImplCopyWithImpl(
      _$ClientInfoModelImpl _value, $Res Function(_$ClientInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? avatarUrl = freezed,
    Object? gender = freezed,
    Object? nonBlock = freezed,
  }) {
    return _then(_$ClientInfoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as num?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as bool?,
      nonBlock: freezed == nonBlock
          ? _value.nonBlock
          : nonBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientInfoModelImpl extends _ClientInfoModel {
  const _$ClientInfoModelImpl(
      {required this.id,
      this.fullName,
      this.email,
      this.phoneNumber,
      this.dateOfBirth,
      this.avatarUrl,
      this.gender,
      this.nonBlock})
      : super._();

  factory _$ClientInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientInfoModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final num? dateOfBirth;
  @override
  final String? avatarUrl;
  @override
  final bool? gender;
  @override
  final bool? nonBlock;

  @override
  String toString() {
    return 'ClientInfoModel(id: $id, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, avatarUrl: $avatarUrl, gender: $gender, nonBlock: $nonBlock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.nonBlock, nonBlock) ||
                other.nonBlock == nonBlock));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, email, phoneNumber,
      dateOfBirth, avatarUrl, gender, nonBlock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientInfoModelImplCopyWith<_$ClientInfoModelImpl> get copyWith =>
      __$$ClientInfoModelImplCopyWithImpl<_$ClientInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientInfoModelImplToJson(
      this,
    );
  }
}

abstract class _ClientInfoModel extends ClientInfoModel {
  const factory _ClientInfoModel(
      {required final int id,
      final String? fullName,
      final String? email,
      final String? phoneNumber,
      final num? dateOfBirth,
      final String? avatarUrl,
      final bool? gender,
      final bool? nonBlock}) = _$ClientInfoModelImpl;
  const _ClientInfoModel._() : super._();

  factory _ClientInfoModel.fromJson(Map<String, dynamic> json) =
      _$ClientInfoModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get fullName;
  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  num? get dateOfBirth;
  @override
  String? get avatarUrl;
  @override
  bool? get gender;
  @override
  bool? get nonBlock;
  @override
  @JsonKey(ignore: true)
  _$$ClientInfoModelImplCopyWith<_$ClientInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
