// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_info_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientInfoRequest _$ClientInfoRequestFromJson(Map<String, dynamic> json) {
  return _ClientInfoRequest.fromJson(json);
}

/// @nodoc
mixin _$ClientInfoRequest {
  String get fullName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientInfoRequestCopyWith<ClientInfoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientInfoRequestCopyWith<$Res> {
  factory $ClientInfoRequestCopyWith(
          ClientInfoRequest value, $Res Function(ClientInfoRequest) then) =
      _$ClientInfoRequestCopyWithImpl<$Res, ClientInfoRequest>;
  @useResult
  $Res call({String fullName, String phoneNumber});
}

/// @nodoc
class _$ClientInfoRequestCopyWithImpl<$Res, $Val extends ClientInfoRequest>
    implements $ClientInfoRequestCopyWith<$Res> {
  _$ClientInfoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientInfoRequestImplCopyWith<$Res>
    implements $ClientInfoRequestCopyWith<$Res> {
  factory _$$ClientInfoRequestImplCopyWith(_$ClientInfoRequestImpl value,
          $Res Function(_$ClientInfoRequestImpl) then) =
      __$$ClientInfoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fullName, String phoneNumber});
}

/// @nodoc
class __$$ClientInfoRequestImplCopyWithImpl<$Res>
    extends _$ClientInfoRequestCopyWithImpl<$Res, _$ClientInfoRequestImpl>
    implements _$$ClientInfoRequestImplCopyWith<$Res> {
  __$$ClientInfoRequestImplCopyWithImpl(_$ClientInfoRequestImpl _value,
      $Res Function(_$ClientInfoRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$ClientInfoRequestImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientInfoRequestImpl implements _ClientInfoRequest {
  const _$ClientInfoRequestImpl(
      {required this.fullName, required this.phoneNumber});

  factory _$ClientInfoRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientInfoRequestImplFromJson(json);

  @override
  final String fullName;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'ClientInfoRequest(fullName: $fullName, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientInfoRequestImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientInfoRequestImplCopyWith<_$ClientInfoRequestImpl> get copyWith =>
      __$$ClientInfoRequestImplCopyWithImpl<_$ClientInfoRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientInfoRequestImplToJson(
      this,
    );
  }
}

abstract class _ClientInfoRequest implements ClientInfoRequest {
  const factory _ClientInfoRequest(
      {required final String fullName,
      required final String phoneNumber}) = _$ClientInfoRequestImpl;

  factory _ClientInfoRequest.fromJson(Map<String, dynamic> json) =
      _$ClientInfoRequestImpl.fromJson;

  @override
  String get fullName;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$ClientInfoRequestImplCopyWith<_$ClientInfoRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
