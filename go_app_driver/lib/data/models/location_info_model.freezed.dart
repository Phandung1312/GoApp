// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationInfoModel {
  int get idUser => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationInfoModelCopyWith<LocationInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationInfoModelCopyWith<$Res> {
  factory $LocationInfoModelCopyWith(
          LocationInfoModel value, $Res Function(LocationInfoModel) then) =
      _$LocationInfoModelCopyWithImpl<$Res, LocationInfoModel>;
  @useResult
  $Res call({int idUser, String location});
}

/// @nodoc
class _$LocationInfoModelCopyWithImpl<$Res, $Val extends LocationInfoModel>
    implements $LocationInfoModelCopyWith<$Res> {
  _$LocationInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUser = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationInfoModelImplCopyWith<$Res>
    implements $LocationInfoModelCopyWith<$Res> {
  factory _$$LocationInfoModelImplCopyWith(_$LocationInfoModelImpl value,
          $Res Function(_$LocationInfoModelImpl) then) =
      __$$LocationInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int idUser, String location});
}

/// @nodoc
class __$$LocationInfoModelImplCopyWithImpl<$Res>
    extends _$LocationInfoModelCopyWithImpl<$Res, _$LocationInfoModelImpl>
    implements _$$LocationInfoModelImplCopyWith<$Res> {
  __$$LocationInfoModelImplCopyWithImpl(_$LocationInfoModelImpl _value,
      $Res Function(_$LocationInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUser = null,
    Object? location = null,
  }) {
    return _then(_$LocationInfoModelImpl(
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocationInfoModelImpl extends _LocationInfoModel {
  const _$LocationInfoModelImpl({required this.idUser, required this.location})
      : super._();

  @override
  final int idUser;
  @override
  final String location;

  @override
  String toString() {
    return 'LocationInfoModel(idUser: $idUser, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationInfoModelImpl &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idUser, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationInfoModelImplCopyWith<_$LocationInfoModelImpl> get copyWith =>
      __$$LocationInfoModelImplCopyWithImpl<_$LocationInfoModelImpl>(
          this, _$identity);
}

abstract class _LocationInfoModel extends LocationInfoModel {
  const factory _LocationInfoModel(
      {required final int idUser,
      required final String location}) = _$LocationInfoModelImpl;
  const _LocationInfoModel._() : super._();

  @override
  int get idUser;
  @override
  String get location;
  @override
  @JsonKey(ignore: true)
  _$$LocationInfoModelImplCopyWith<_$LocationInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
