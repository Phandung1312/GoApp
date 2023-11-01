// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_picker_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapPickerData {
  LatLng get latLng => throw _privateConstructorUsedError;
  String? get display => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapPickerDataCopyWith<MapPickerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapPickerDataCopyWith<$Res> {
  factory $MapPickerDataCopyWith(
          MapPickerData value, $Res Function(MapPickerData) then) =
      _$MapPickerDataCopyWithImpl<$Res, MapPickerData>;
  @useResult
  $Res call({LatLng latLng, String? display});
}

/// @nodoc
class _$MapPickerDataCopyWithImpl<$Res, $Val extends MapPickerData>
    implements $MapPickerDataCopyWith<$Res> {
  _$MapPickerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latLng = null,
    Object? display = freezed,
  }) {
    return _then(_value.copyWith(
      latLng: null == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapPickerDataImplCopyWith<$Res>
    implements $MapPickerDataCopyWith<$Res> {
  factory _$$MapPickerDataImplCopyWith(
          _$MapPickerDataImpl value, $Res Function(_$MapPickerDataImpl) then) =
      __$$MapPickerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LatLng latLng, String? display});
}

/// @nodoc
class __$$MapPickerDataImplCopyWithImpl<$Res>
    extends _$MapPickerDataCopyWithImpl<$Res, _$MapPickerDataImpl>
    implements _$$MapPickerDataImplCopyWith<$Res> {
  __$$MapPickerDataImplCopyWithImpl(
      _$MapPickerDataImpl _value, $Res Function(_$MapPickerDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latLng = null,
    Object? display = freezed,
  }) {
    return _then(_$MapPickerDataImpl(
      latLng: null == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MapPickerDataImpl implements _MapPickerData {
  const _$MapPickerDataImpl(
      {this.latLng = const LatLng(0.0, 0.0), this.display});

  @override
  @JsonKey()
  final LatLng latLng;
  @override
  final String? display;

  @override
  String toString() {
    return 'MapPickerData(latLng: $latLng, display: $display)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapPickerDataImpl &&
            (identical(other.latLng, latLng) || other.latLng == latLng) &&
            (identical(other.display, display) || other.display == display));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latLng, display);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapPickerDataImplCopyWith<_$MapPickerDataImpl> get copyWith =>
      __$$MapPickerDataImplCopyWithImpl<_$MapPickerDataImpl>(this, _$identity);
}

abstract class _MapPickerData implements MapPickerData {
  const factory _MapPickerData({final LatLng latLng, final String? display}) =
      _$MapPickerDataImpl;

  @override
  LatLng get latLng;
  @override
  String? get display;
  @override
  @JsonKey(ignore: true)
  _$$MapPickerDataImplCopyWith<_$MapPickerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
