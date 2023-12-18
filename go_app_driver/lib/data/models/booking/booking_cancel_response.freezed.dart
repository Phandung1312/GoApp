// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_cancel_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingCancelResponse _$BookingCancelResponseFromJson(
    Map<String, dynamic> json) {
  return _BookingCancelResponse.fromJson(json);
}

/// @nodoc
mixin _$BookingCancelResponse {
  int get id => throw _privateConstructorUsedError;
  String? get reasonType => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @BookingStatusConverter()
  BookingStatus? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingCancelResponseCopyWith<BookingCancelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCancelResponseCopyWith<$Res> {
  factory $BookingCancelResponseCopyWith(BookingCancelResponse value,
          $Res Function(BookingCancelResponse) then) =
      _$BookingCancelResponseCopyWithImpl<$Res, BookingCancelResponse>;
  @useResult
  $Res call(
      {int id,
      String? reasonType,
      String? content,
      @BookingStatusConverter() BookingStatus? status});
}

/// @nodoc
class _$BookingCancelResponseCopyWithImpl<$Res,
        $Val extends BookingCancelResponse>
    implements $BookingCancelResponseCopyWith<$Res> {
  _$BookingCancelResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reasonType = freezed,
    Object? content = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reasonType: freezed == reasonType
          ? _value.reasonType
          : reasonType // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingCancelResponseImplCopyWith<$Res>
    implements $BookingCancelResponseCopyWith<$Res> {
  factory _$$BookingCancelResponseImplCopyWith(
          _$BookingCancelResponseImpl value,
          $Res Function(_$BookingCancelResponseImpl) then) =
      __$$BookingCancelResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? reasonType,
      String? content,
      @BookingStatusConverter() BookingStatus? status});
}

/// @nodoc
class __$$BookingCancelResponseImplCopyWithImpl<$Res>
    extends _$BookingCancelResponseCopyWithImpl<$Res,
        _$BookingCancelResponseImpl>
    implements _$$BookingCancelResponseImplCopyWith<$Res> {
  __$$BookingCancelResponseImplCopyWithImpl(_$BookingCancelResponseImpl _value,
      $Res Function(_$BookingCancelResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reasonType = freezed,
    Object? content = freezed,
    Object? status = freezed,
  }) {
    return _then(_$BookingCancelResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reasonType: freezed == reasonType
          ? _value.reasonType
          : reasonType // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingStatus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingCancelResponseImpl implements _BookingCancelResponse {
  const _$BookingCancelResponseImpl(
      {required this.id,
      this.reasonType,
      this.content,
      @BookingStatusConverter() this.status});

  factory _$BookingCancelResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingCancelResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String? reasonType;
  @override
  final String? content;
  @override
  @BookingStatusConverter()
  final BookingStatus? status;

  @override
  String toString() {
    return 'BookingCancelResponse(id: $id, reasonType: $reasonType, content: $content, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingCancelResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reasonType, reasonType) ||
                other.reasonType == reasonType) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, reasonType, content, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingCancelResponseImplCopyWith<_$BookingCancelResponseImpl>
      get copyWith => __$$BookingCancelResponseImplCopyWithImpl<
          _$BookingCancelResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingCancelResponseImplToJson(
      this,
    );
  }
}

abstract class _BookingCancelResponse implements BookingCancelResponse {
  const factory _BookingCancelResponse(
          {required final int id,
          final String? reasonType,
          final String? content,
          @BookingStatusConverter() final BookingStatus? status}) =
      _$BookingCancelResponseImpl;

  factory _BookingCancelResponse.fromJson(Map<String, dynamic> json) =
      _$BookingCancelResponseImpl.fromJson;

  @override
  int get id;
  @override
  String? get reasonType;
  @override
  String? get content;
  @override
  @BookingStatusConverter()
  BookingStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$$BookingCancelResponseImplCopyWith<_$BookingCancelResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
