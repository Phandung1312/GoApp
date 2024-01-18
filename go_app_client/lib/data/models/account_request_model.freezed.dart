// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountRequestModel {
  int get id => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;
  bool? get gender => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  File? get avatar => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountRequestModelCopyWith<AccountRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRequestModelCopyWith<$Res> {
  factory $AccountRequestModelCopyWith(
          AccountRequestModel value, $Res Function(AccountRequestModel) then) =
      _$AccountRequestModelCopyWithImpl<$Res, AccountRequestModel>;
  @useResult
  $Res call(
      {int id,
      String? fullname,
      bool? gender,
      DateTime? dateOfBirth,
      String? phoneNumber,
      File? avatar});
}

/// @nodoc
class _$AccountRequestModelCopyWithImpl<$Res, $Val extends AccountRequestModel>
    implements $AccountRequestModelCopyWith<$Res> {
  _$AccountRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullname = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? phoneNumber = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountRequestModelImplCopyWith<$Res>
    implements $AccountRequestModelCopyWith<$Res> {
  factory _$$AccountRequestModelImplCopyWith(_$AccountRequestModelImpl value,
          $Res Function(_$AccountRequestModelImpl) then) =
      __$$AccountRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? fullname,
      bool? gender,
      DateTime? dateOfBirth,
      String? phoneNumber,
      File? avatar});
}

/// @nodoc
class __$$AccountRequestModelImplCopyWithImpl<$Res>
    extends _$AccountRequestModelCopyWithImpl<$Res, _$AccountRequestModelImpl>
    implements _$$AccountRequestModelImplCopyWith<$Res> {
  __$$AccountRequestModelImplCopyWithImpl(_$AccountRequestModelImpl _value,
      $Res Function(_$AccountRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullname = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? phoneNumber = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$AccountRequestModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$AccountRequestModelImpl implements _AccountRequestModel {
  const _$AccountRequestModelImpl(
      {this.id = 0,
      this.fullname,
      this.gender,
      this.dateOfBirth,
      this.phoneNumber,
      this.avatar});

  @override
  @JsonKey()
  final int id;
  @override
  final String? fullname;
  @override
  final bool? gender;
  @override
  final DateTime? dateOfBirth;
  @override
  final String? phoneNumber;
  @override
  final File? avatar;

  @override
  String toString() {
    return 'AccountRequestModel(id: $id, fullname: $fullname, gender: $gender, dateOfBirth: $dateOfBirth, phoneNumber: $phoneNumber, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRequestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, fullname, gender, dateOfBirth, phoneNumber, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountRequestModelImplCopyWith<_$AccountRequestModelImpl> get copyWith =>
      __$$AccountRequestModelImplCopyWithImpl<_$AccountRequestModelImpl>(
          this, _$identity);
}

abstract class _AccountRequestModel implements AccountRequestModel {
  const factory _AccountRequestModel(
      {final int id,
      final String? fullname,
      final bool? gender,
      final DateTime? dateOfBirth,
      final String? phoneNumber,
      final File? avatar}) = _$AccountRequestModelImpl;

  @override
  int get id;
  @override
  String? get fullname;
  @override
  bool? get gender;
  @override
  DateTime? get dateOfBirth;
  @override
  String? get phoneNumber;
  @override
  File? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$AccountRequestModelImplCopyWith<_$AccountRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
