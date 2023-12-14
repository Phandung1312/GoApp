// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_status_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingStatusRequestModel _$BookingStatusRequestModelFromJson(
    Map<String, dynamic> json) {
  return _BookingStatusRequestModel.fromJson(json);
}

/// @nodoc
mixin _$BookingStatusRequestModel {
  int get uid => throw _privateConstructorUsedError;
  int get bookingId => throw _privateConstructorUsedError;
  @BookingStatusConverter()
  BookingStatus get bookingStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingStatusRequestModelCopyWith<BookingStatusRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStatusRequestModelCopyWith<$Res> {
  factory $BookingStatusRequestModelCopyWith(BookingStatusRequestModel value,
          $Res Function(BookingStatusRequestModel) then) =
      _$BookingStatusRequestModelCopyWithImpl<$Res, BookingStatusRequestModel>;
  @useResult
  $Res call(
      {int uid,
      int bookingId,
      @BookingStatusConverter() BookingStatus bookingStatus});
}

/// @nodoc
class _$BookingStatusRequestModelCopyWithImpl<$Res,
        $Val extends BookingStatusRequestModel>
    implements $BookingStatusRequestModelCopyWith<$Res> {
  _$BookingStatusRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? bookingId = null,
    Object? bookingStatus = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
      bookingStatus: null == bookingStatus
          ? _value.bookingStatus
          : bookingStatus // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingStatusRequestModelImplCopyWith<$Res>
    implements $BookingStatusRequestModelCopyWith<$Res> {
  factory _$$BookingStatusRequestModelImplCopyWith(
          _$BookingStatusRequestModelImpl value,
          $Res Function(_$BookingStatusRequestModelImpl) then) =
      __$$BookingStatusRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int uid,
      int bookingId,
      @BookingStatusConverter() BookingStatus bookingStatus});
}

/// @nodoc
class __$$BookingStatusRequestModelImplCopyWithImpl<$Res>
    extends _$BookingStatusRequestModelCopyWithImpl<$Res,
        _$BookingStatusRequestModelImpl>
    implements _$$BookingStatusRequestModelImplCopyWith<$Res> {
  __$$BookingStatusRequestModelImplCopyWithImpl(
      _$BookingStatusRequestModelImpl _value,
      $Res Function(_$BookingStatusRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? bookingId = null,
    Object? bookingStatus = null,
  }) {
    return _then(_$BookingStatusRequestModelImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
      bookingStatus: null == bookingStatus
          ? _value.bookingStatus
          : bookingStatus // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingStatusRequestModelImpl implements _BookingStatusRequestModel {
  const _$BookingStatusRequestModelImpl(
      {this.uid = 0,
      this.bookingId = 0,
      @BookingStatusConverter() this.bookingStatus = BookingStatus.unknown});

  factory _$BookingStatusRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingStatusRequestModelImplFromJson(json);

  @override
  @JsonKey()
  final int uid;
  @override
  @JsonKey()
  final int bookingId;
  @override
  @JsonKey()
  @BookingStatusConverter()
  final BookingStatus bookingStatus;

  @override
  String toString() {
    return 'BookingStatusRequestModel(uid: $uid, bookingId: $bookingId, bookingStatus: $bookingStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingStatusRequestModelImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.bookingStatus, bookingStatus) ||
                other.bookingStatus == bookingStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, bookingId, bookingStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingStatusRequestModelImplCopyWith<_$BookingStatusRequestModelImpl>
      get copyWith => __$$BookingStatusRequestModelImplCopyWithImpl<
          _$BookingStatusRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingStatusRequestModelImplToJson(
      this,
    );
  }
}

abstract class _BookingStatusRequestModel implements BookingStatusRequestModel {
  const factory _BookingStatusRequestModel(
          {final int uid,
          final int bookingId,
          @BookingStatusConverter() final BookingStatus bookingStatus}) =
      _$BookingStatusRequestModelImpl;

  factory _BookingStatusRequestModel.fromJson(Map<String, dynamic> json) =
      _$BookingStatusRequestModelImpl.fromJson;

  @override
  int get uid;
  @override
  int get bookingId;
  @override
  @BookingStatusConverter()
  BookingStatus get bookingStatus;
  @override
  @JsonKey(ignore: true)
  _$$BookingStatusRequestModelImplCopyWith<_$BookingStatusRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
