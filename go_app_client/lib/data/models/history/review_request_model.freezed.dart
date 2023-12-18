// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewRequestModel _$ReviewRequestModelFromJson(Map<String, dynamic> json) {
  return _ReviewRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewRequestModel {
  int get bookingId => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewRequestModelCopyWith<ReviewRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewRequestModelCopyWith<$Res> {
  factory $ReviewRequestModelCopyWith(
          ReviewRequestModel value, $Res Function(ReviewRequestModel) then) =
      _$ReviewRequestModelCopyWithImpl<$Res, ReviewRequestModel>;
  @useResult
  $Res call({int bookingId, int rating, String content});
}

/// @nodoc
class _$ReviewRequestModelCopyWithImpl<$Res, $Val extends ReviewRequestModel>
    implements $ReviewRequestModelCopyWith<$Res> {
  _$ReviewRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
    Object? rating = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewRequestModelImplCopyWith<$Res>
    implements $ReviewRequestModelCopyWith<$Res> {
  factory _$$ReviewRequestModelImplCopyWith(_$ReviewRequestModelImpl value,
          $Res Function(_$ReviewRequestModelImpl) then) =
      __$$ReviewRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int bookingId, int rating, String content});
}

/// @nodoc
class __$$ReviewRequestModelImplCopyWithImpl<$Res>
    extends _$ReviewRequestModelCopyWithImpl<$Res, _$ReviewRequestModelImpl>
    implements _$$ReviewRequestModelImplCopyWith<$Res> {
  __$$ReviewRequestModelImplCopyWithImpl(_$ReviewRequestModelImpl _value,
      $Res Function(_$ReviewRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
    Object? rating = null,
    Object? content = null,
  }) {
    return _then(_$ReviewRequestModelImpl(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewRequestModelImpl extends _ReviewRequestModel {
  const _$ReviewRequestModelImpl(
      {this.bookingId = 0, this.rating = 0, this.content = ""})
      : super._();

  factory _$ReviewRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewRequestModelImplFromJson(json);

  @override
  @JsonKey()
  final int bookingId;
  @override
  @JsonKey()
  final int rating;
  @override
  @JsonKey()
  final String content;

  @override
  String toString() {
    return 'ReviewRequestModel(bookingId: $bookingId, rating: $rating, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewRequestModelImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bookingId, rating, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewRequestModelImplCopyWith<_$ReviewRequestModelImpl> get copyWith =>
      __$$ReviewRequestModelImplCopyWithImpl<_$ReviewRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ReviewRequestModel extends ReviewRequestModel {
  const factory _ReviewRequestModel(
      {final int bookingId,
      final int rating,
      final String content}) = _$ReviewRequestModelImpl;
  const _ReviewRequestModel._() : super._();

  factory _ReviewRequestModel.fromJson(Map<String, dynamic> json) =
      _$ReviewRequestModelImpl.fromJson;

  @override
  int get bookingId;
  @override
  int get rating;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$ReviewRequestModelImplCopyWith<_$ReviewRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
