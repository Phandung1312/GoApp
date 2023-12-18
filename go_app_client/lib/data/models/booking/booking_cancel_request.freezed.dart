// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_cancel_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingCancelRequest {
  int get bookingId => throw _privateConstructorUsedError;
  String get reasonType => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingCancelRequestCopyWith<BookingCancelRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCancelRequestCopyWith<$Res> {
  factory $BookingCancelRequestCopyWith(BookingCancelRequest value,
          $Res Function(BookingCancelRequest) then) =
      _$BookingCancelRequestCopyWithImpl<$Res, BookingCancelRequest>;
  @useResult
  $Res call({int bookingId, String reasonType, String content});
}

/// @nodoc
class _$BookingCancelRequestCopyWithImpl<$Res,
        $Val extends BookingCancelRequest>
    implements $BookingCancelRequestCopyWith<$Res> {
  _$BookingCancelRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
    Object? reasonType = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
      reasonType: null == reasonType
          ? _value.reasonType
          : reasonType // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingCancelRequestImplCopyWith<$Res>
    implements $BookingCancelRequestCopyWith<$Res> {
  factory _$$BookingCancelRequestImplCopyWith(_$BookingCancelRequestImpl value,
          $Res Function(_$BookingCancelRequestImpl) then) =
      __$$BookingCancelRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int bookingId, String reasonType, String content});
}

/// @nodoc
class __$$BookingCancelRequestImplCopyWithImpl<$Res>
    extends _$BookingCancelRequestCopyWithImpl<$Res, _$BookingCancelRequestImpl>
    implements _$$BookingCancelRequestImplCopyWith<$Res> {
  __$$BookingCancelRequestImplCopyWithImpl(_$BookingCancelRequestImpl _value,
      $Res Function(_$BookingCancelRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
    Object? reasonType = null,
    Object? content = null,
  }) {
    return _then(_$BookingCancelRequestImpl(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
      reasonType: null == reasonType
          ? _value.reasonType
          : reasonType // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookingCancelRequestImpl extends _BookingCancelRequest {
  const _$BookingCancelRequestImpl(
      {this.bookingId = 0, this.reasonType = "CUSTOMER", this.content = ""})
      : super._();

  @override
  @JsonKey()
  final int bookingId;
  @override
  @JsonKey()
  final String reasonType;
  @override
  @JsonKey()
  final String content;

  @override
  String toString() {
    return 'BookingCancelRequest(bookingId: $bookingId, reasonType: $reasonType, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingCancelRequestImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.reasonType, reasonType) ||
                other.reasonType == reasonType) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId, reasonType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingCancelRequestImplCopyWith<_$BookingCancelRequestImpl>
      get copyWith =>
          __$$BookingCancelRequestImplCopyWithImpl<_$BookingCancelRequestImpl>(
              this, _$identity);
}

abstract class _BookingCancelRequest extends BookingCancelRequest {
  const factory _BookingCancelRequest(
      {final int bookingId,
      final String reasonType,
      final String content}) = _$BookingCancelRequestImpl;
  const _BookingCancelRequest._() : super._();

  @override
  int get bookingId;
  @override
  String get reasonType;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$BookingCancelRequestImplCopyWith<_$BookingCancelRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
