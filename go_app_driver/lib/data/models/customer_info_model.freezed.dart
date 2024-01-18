// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerInfoModel _$CustomerInfoModelFromJson(Map<String, dynamic> json) {
  return _CustomerInfoModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerInfoModel {
  int get id => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerInfoModelCopyWith<CustomerInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerInfoModelCopyWith<$Res> {
  factory $CustomerInfoModelCopyWith(
          CustomerInfoModel value, $Res Function(CustomerInfoModel) then) =
      _$CustomerInfoModelCopyWithImpl<$Res, CustomerInfoModel>;
  @useResult
  $Res call({int id, String? fullName, String? phoneNumber, String? avatarUrl});
}

/// @nodoc
class _$CustomerInfoModelCopyWithImpl<$Res, $Val extends CustomerInfoModel>
    implements $CustomerInfoModelCopyWith<$Res> {
  _$CustomerInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? avatarUrl = freezed,
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
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerInfoModelImplCopyWith<$Res>
    implements $CustomerInfoModelCopyWith<$Res> {
  factory _$$CustomerInfoModelImplCopyWith(_$CustomerInfoModelImpl value,
          $Res Function(_$CustomerInfoModelImpl) then) =
      __$$CustomerInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? fullName, String? phoneNumber, String? avatarUrl});
}

/// @nodoc
class __$$CustomerInfoModelImplCopyWithImpl<$Res>
    extends _$CustomerInfoModelCopyWithImpl<$Res, _$CustomerInfoModelImpl>
    implements _$$CustomerInfoModelImplCopyWith<$Res> {
  __$$CustomerInfoModelImplCopyWithImpl(_$CustomerInfoModelImpl _value,
      $Res Function(_$CustomerInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$CustomerInfoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerInfoModelImpl extends _CustomerInfoModel {
  const _$CustomerInfoModelImpl(
      {required this.id, this.fullName, this.phoneNumber, this.avatarUrl})
      : super._();

  factory _$CustomerInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerInfoModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? fullName;
  @override
  final String? phoneNumber;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'CustomerInfoModel(id: $id, fullName: $fullName, phoneNumber: $phoneNumber, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, fullName, phoneNumber, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerInfoModelImplCopyWith<_$CustomerInfoModelImpl> get copyWith =>
      __$$CustomerInfoModelImplCopyWithImpl<_$CustomerInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerInfoModelImplToJson(
      this,
    );
  }
}

abstract class _CustomerInfoModel extends CustomerInfoModel {
  const factory _CustomerInfoModel(
      {required final int id,
      final String? fullName,
      final String? phoneNumber,
      final String? avatarUrl}) = _$CustomerInfoModelImpl;
  const _CustomerInfoModel._() : super._();

  factory _CustomerInfoModel.fromJson(Map<String, dynamic> json) =
      _$CustomerInfoModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get fullName;
  @override
  String? get phoneNumber;
  @override
  String? get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$CustomerInfoModelImplCopyWith<_$CustomerInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
