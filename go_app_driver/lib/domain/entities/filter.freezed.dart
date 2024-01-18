// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Filter {
  int get page => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get sortType => throw _privateConstructorUsedError;
  String? get sortField => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterCopyWith<Filter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCopyWith<$Res> {
  factory $FilterCopyWith(Filter value, $Res Function(Filter) then) =
      _$FilterCopyWithImpl<$Res, Filter>;
  @useResult
  $Res call(
      {int page,
      int size,
      String? status,
      String? sortType,
      String? sortField});
}

/// @nodoc
class _$FilterCopyWithImpl<$Res, $Val extends Filter>
    implements $FilterCopyWith<$Res> {
  _$FilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = null,
    Object? status = freezed,
    Object? sortType = freezed,
    Object? sortField = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      sortType: freezed == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as String?,
      sortField: freezed == sortField
          ? _value.sortField
          : sortField // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterImplCopyWith<$Res> implements $FilterCopyWith<$Res> {
  factory _$$FilterImplCopyWith(
          _$FilterImpl value, $Res Function(_$FilterImpl) then) =
      __$$FilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int size,
      String? status,
      String? sortType,
      String? sortField});
}

/// @nodoc
class __$$FilterImplCopyWithImpl<$Res>
    extends _$FilterCopyWithImpl<$Res, _$FilterImpl>
    implements _$$FilterImplCopyWith<$Res> {
  __$$FilterImplCopyWithImpl(
      _$FilterImpl _value, $Res Function(_$FilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = null,
    Object? status = freezed,
    Object? sortType = freezed,
    Object? sortField = freezed,
  }) {
    return _then(_$FilterImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      sortType: freezed == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as String?,
      sortField: freezed == sortField
          ? _value.sortField
          : sortField // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FilterImpl implements _Filter {
  const _$FilterImpl(
      {this.page = 0,
      this.size = 10,
      this.status,
      this.sortType,
      this.sortField});

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int size;
  @override
  final String? status;
  @override
  final String? sortType;
  @override
  final String? sortField;

  @override
  String toString() {
    return 'Filter(page: $page, size: $size, status: $status, sortType: $sortType, sortField: $sortField)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType) &&
            (identical(other.sortField, sortField) ||
                other.sortField == sortField));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, page, size, status, sortType, sortField);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterImplCopyWith<_$FilterImpl> get copyWith =>
      __$$FilterImplCopyWithImpl<_$FilterImpl>(this, _$identity);
}

abstract class _Filter implements Filter {
  const factory _Filter(
      {final int page,
      final int size,
      final String? status,
      final String? sortType,
      final String? sortField}) = _$FilterImpl;

  @override
  int get page;
  @override
  int get size;
  @override
  String? get status;
  @override
  String? get sortType;
  @override
  String? get sortField;
  @override
  @JsonKey(ignore: true)
  _$$FilterImplCopyWith<_$FilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
