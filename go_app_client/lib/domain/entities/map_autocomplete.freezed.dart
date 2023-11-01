// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_autocomplete.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapAutoComplete {
  String get address => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get display => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapAutoCompleteCopyWith<MapAutoComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapAutoCompleteCopyWith<$Res> {
  factory $MapAutoCompleteCopyWith(
          MapAutoComplete value, $Res Function(MapAutoComplete) then) =
      _$MapAutoCompleteCopyWithImpl<$Res, MapAutoComplete>;
  @useResult
  $Res call({String address, String name, String display});
}

/// @nodoc
class _$MapAutoCompleteCopyWithImpl<$Res, $Val extends MapAutoComplete>
    implements $MapAutoCompleteCopyWith<$Res> {
  _$MapAutoCompleteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? name = null,
    Object? display = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapAutoCompleteImplCopyWith<$Res>
    implements $MapAutoCompleteCopyWith<$Res> {
  factory _$$MapAutoCompleteImplCopyWith(_$MapAutoCompleteImpl value,
          $Res Function(_$MapAutoCompleteImpl) then) =
      __$$MapAutoCompleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, String name, String display});
}

/// @nodoc
class __$$MapAutoCompleteImplCopyWithImpl<$Res>
    extends _$MapAutoCompleteCopyWithImpl<$Res, _$MapAutoCompleteImpl>
    implements _$$MapAutoCompleteImplCopyWith<$Res> {
  __$$MapAutoCompleteImplCopyWithImpl(
      _$MapAutoCompleteImpl _value, $Res Function(_$MapAutoCompleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? name = null,
    Object? display = null,
  }) {
    return _then(_$MapAutoCompleteImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MapAutoCompleteImpl implements _MapAutoComplete {
  const _$MapAutoCompleteImpl(
      {this.address = "", this.name = "", this.display = ""});

  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String display;

  @override
  String toString() {
    return 'MapAutoComplete(address: $address, name: $name, display: $display)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapAutoCompleteImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.display, display) || other.display == display));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, name, display);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapAutoCompleteImplCopyWith<_$MapAutoCompleteImpl> get copyWith =>
      __$$MapAutoCompleteImplCopyWithImpl<_$MapAutoCompleteImpl>(
          this, _$identity);
}

abstract class _MapAutoComplete implements MapAutoComplete {
  const factory _MapAutoComplete(
      {final String address,
      final String name,
      final String display}) = _$MapAutoCompleteImpl;

  @override
  String get address;
  @override
  String get name;
  @override
  String get display;
  @override
  @JsonKey(ignore: true)
  _$$MapAutoCompleteImplCopyWith<_$MapAutoCompleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
