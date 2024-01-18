// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationModel _$PaginationModelFromJson(Map<String, dynamic> json) {
  return _PanigationModel.fromJson(json);
}

/// @nodoc
mixin _$PaginationModel {
  int get page => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationModelCopyWith<PaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationModelCopyWith<$Res> {
  factory $PaginationModelCopyWith(
          PaginationModel value, $Res Function(PaginationModel) then) =
      _$PaginationModelCopyWithImpl<$Res, PaginationModel>;
  @useResult
  $Res call({int page, List<Map<String, dynamic>> content});
}

/// @nodoc
class _$PaginationModelCopyWithImpl<$Res, $Val extends PaginationModel>
    implements $PaginationModelCopyWith<$Res> {
  _$PaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PanigationModelImplCopyWith<$Res>
    implements $PaginationModelCopyWith<$Res> {
  factory _$$PanigationModelImplCopyWith(_$PanigationModelImpl value,
          $Res Function(_$PanigationModelImpl) then) =
      __$$PanigationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, List<Map<String, dynamic>> content});
}

/// @nodoc
class __$$PanigationModelImplCopyWithImpl<$Res>
    extends _$PaginationModelCopyWithImpl<$Res, _$PanigationModelImpl>
    implements _$$PanigationModelImplCopyWith<$Res> {
  __$$PanigationModelImplCopyWithImpl(
      _$PanigationModelImpl _value, $Res Function(_$PanigationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? content = null,
  }) {
    return _then(_$PanigationModelImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PanigationModelImpl implements _PanigationModel {
  const _$PanigationModelImpl(
      {required this.page, required final List<Map<String, dynamic>> content})
      : _content = content;

  factory _$PanigationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PanigationModelImplFromJson(json);

  @override
  final int page;
  final List<Map<String, dynamic>> _content;
  @override
  List<Map<String, dynamic>> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  String toString() {
    return 'PaginationModel(page: $page, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PanigationModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(_content));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PanigationModelImplCopyWith<_$PanigationModelImpl> get copyWith =>
      __$$PanigationModelImplCopyWithImpl<_$PanigationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PanigationModelImplToJson(
      this,
    );
  }
}

abstract class _PanigationModel implements PaginationModel {
  const factory _PanigationModel(
          {required final int page,
          required final List<Map<String, dynamic>> content}) =
      _$PanigationModelImpl;

  factory _PanigationModel.fromJson(Map<String, dynamic> json) =
      _$PanigationModelImpl.fromJson;

  @override
  int get page;
  @override
  List<Map<String, dynamic>> get content;
  @override
  @JsonKey(ignore: true)
  _$$PanigationModelImplCopyWith<_$PanigationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
