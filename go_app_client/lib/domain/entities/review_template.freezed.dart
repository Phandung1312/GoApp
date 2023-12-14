// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReviewTemplate {
  ImageProvider<Object>? get image => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewTemplateCopyWith<ReviewTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewTemplateCopyWith<$Res> {
  factory $ReviewTemplateCopyWith(
          ReviewTemplate value, $Res Function(ReviewTemplate) then) =
      _$ReviewTemplateCopyWithImpl<$Res, ReviewTemplate>;
  @useResult
  $Res call({ImageProvider<Object>? image, String? content});
}

/// @nodoc
class _$ReviewTemplateCopyWithImpl<$Res, $Val extends ReviewTemplate>
    implements $ReviewTemplateCopyWith<$Res> {
  _$ReviewTemplateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewTemplateImplCopyWith<$Res>
    implements $ReviewTemplateCopyWith<$Res> {
  factory _$$ReviewTemplateImplCopyWith(_$ReviewTemplateImpl value,
          $Res Function(_$ReviewTemplateImpl) then) =
      __$$ReviewTemplateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImageProvider<Object>? image, String? content});
}

/// @nodoc
class __$$ReviewTemplateImplCopyWithImpl<$Res>
    extends _$ReviewTemplateCopyWithImpl<$Res, _$ReviewTemplateImpl>
    implements _$$ReviewTemplateImplCopyWith<$Res> {
  __$$ReviewTemplateImplCopyWithImpl(
      _$ReviewTemplateImpl _value, $Res Function(_$ReviewTemplateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? content = freezed,
  }) {
    return _then(_$ReviewTemplateImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ReviewTemplateImpl implements _ReviewTemplate {
  const _$ReviewTemplateImpl({this.image, this.content});

  @override
  final ImageProvider<Object>? image;
  @override
  final String? content;

  @override
  String toString() {
    return 'ReviewTemplate(image: $image, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewTemplateImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewTemplateImplCopyWith<_$ReviewTemplateImpl> get copyWith =>
      __$$ReviewTemplateImplCopyWithImpl<_$ReviewTemplateImpl>(
          this, _$identity);
}

abstract class _ReviewTemplate implements ReviewTemplate {
  const factory _ReviewTemplate(
      {final ImageProvider<Object>? image,
      final String? content}) = _$ReviewTemplateImpl;

  @override
  ImageProvider<Object>? get image;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$ReviewTemplateImplCopyWith<_$ReviewTemplateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
