// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClientInfo {
  int get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  int get dateOfBirth => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  bool get gender => throw _privateConstructorUsedError;
  bool get block => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientInfoCopyWith<ClientInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientInfoCopyWith<$Res> {
  factory $ClientInfoCopyWith(
          ClientInfo value, $Res Function(ClientInfo) then) =
      _$ClientInfoCopyWithImpl<$Res, ClientInfo>;
  @useResult
  $Res call(
      {int id,
      String fullName,
      String email,
      String phoneNumber,
      int dateOfBirth,
      String avatarUrl,
      bool gender,
      bool block});
}

/// @nodoc
class _$ClientInfoCopyWithImpl<$Res, $Val extends ClientInfo>
    implements $ClientInfoCopyWith<$Res> {
  _$ClientInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? dateOfBirth = null,
    Object? avatarUrl = null,
    Object? gender = null,
    Object? block = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as int,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as bool,
      block: null == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientInfoImplCopyWith<$Res>
    implements $ClientInfoCopyWith<$Res> {
  factory _$$ClientInfoImplCopyWith(
          _$ClientInfoImpl value, $Res Function(_$ClientInfoImpl) then) =
      __$$ClientInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String fullName,
      String email,
      String phoneNumber,
      int dateOfBirth,
      String avatarUrl,
      bool gender,
      bool block});
}

/// @nodoc
class __$$ClientInfoImplCopyWithImpl<$Res>
    extends _$ClientInfoCopyWithImpl<$Res, _$ClientInfoImpl>
    implements _$$ClientInfoImplCopyWith<$Res> {
  __$$ClientInfoImplCopyWithImpl(
      _$ClientInfoImpl _value, $Res Function(_$ClientInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? dateOfBirth = null,
    Object? avatarUrl = null,
    Object? gender = null,
    Object? block = null,
  }) {
    return _then(_$ClientInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as int,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as bool,
      block: null == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ClientInfoImpl implements _ClientInfo {
  const _$ClientInfoImpl(
      {this.id = 0,
      this.fullName = "",
      this.email = "",
      this.phoneNumber = "",
      this.dateOfBirth = 0,
      this.avatarUrl = "",
      this.gender = true,
      this.block = false});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final int dateOfBirth;
  @override
  @JsonKey()
  final String avatarUrl;
  @override
  @JsonKey()
  final bool gender;
  @override
  @JsonKey()
  final bool block;

  @override
  String toString() {
    return 'ClientInfo(id: $id, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, avatarUrl: $avatarUrl, gender: $gender, block: $block)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientInfoImpl &&
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
            (identical(other.block, block) || other.block == block));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, email, phoneNumber,
      dateOfBirth, avatarUrl, gender, block);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientInfoImplCopyWith<_$ClientInfoImpl> get copyWith =>
      __$$ClientInfoImplCopyWithImpl<_$ClientInfoImpl>(this, _$identity);
}

abstract class _ClientInfo implements ClientInfo {
  const factory _ClientInfo(
      {final int id,
      final String fullName,
      final String email,
      final String phoneNumber,
      final int dateOfBirth,
      final String avatarUrl,
      final bool gender,
      final bool block}) = _$ClientInfoImpl;

  @override
  int get id;
  @override
  String get fullName;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  int get dateOfBirth;
  @override
  String get avatarUrl;
  @override
  bool get gender;
  @override
  bool get block;
  @override
  @JsonKey(ignore: true)
  _$$ClientInfoImplCopyWith<_$ClientInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
