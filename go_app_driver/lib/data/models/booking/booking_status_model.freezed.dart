// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingStatusModel _$BookingStatusModelFromJson(Map<String, dynamic> json) {
  return _BookingStatusModel.fromJson(json);
}

/// @nodoc
mixin _$BookingStatusModel {
  @JsonKey(name: 'bookingId')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  @BookingStatusConverter()
  BookingStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingStatusModelCopyWith<BookingStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStatusModelCopyWith<$Res> {
  factory $BookingStatusModelCopyWith(
          BookingStatusModel value, $Res Function(BookingStatusModel) then) =
      _$BookingStatusModelCopyWithImpl<$Res, BookingStatusModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bookingId') int id,
      @JsonKey(name: 'status') @BookingStatusConverter() BookingStatus status});
}

/// @nodoc
class _$BookingStatusModelCopyWithImpl<$Res, $Val extends BookingStatusModel>
    implements $BookingStatusModelCopyWith<$Res> {
  _$BookingStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingStatusModelImplCopyWith<$Res>
    implements $BookingStatusModelCopyWith<$Res> {
  factory _$$BookingStatusModelImplCopyWith(_$BookingStatusModelImpl value,
          $Res Function(_$BookingStatusModelImpl) then) =
      __$$BookingStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bookingId') int id,
      @JsonKey(name: 'status') @BookingStatusConverter() BookingStatus status});
}

/// @nodoc
class __$$BookingStatusModelImplCopyWithImpl<$Res>
    extends _$BookingStatusModelCopyWithImpl<$Res, _$BookingStatusModelImpl>
    implements _$$BookingStatusModelImplCopyWith<$Res> {
  __$$BookingStatusModelImplCopyWithImpl(_$BookingStatusModelImpl _value,
      $Res Function(_$BookingStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
  }) {
    return _then(_$BookingStatusModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingStatusModelImpl extends _BookingStatusModel {
  const _$BookingStatusModelImpl(
      {@JsonKey(name: 'bookingId') required this.id,
      @JsonKey(name: 'status')
      @BookingStatusConverter()
      this.status = BookingStatus.unknown})
      : super._();

  factory _$BookingStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingStatusModelImplFromJson(json);

  @override
  @JsonKey(name: 'bookingId')
  final int id;
  @override
  @JsonKey(name: 'status')
  @BookingStatusConverter()
  final BookingStatus status;

  @override
  String toString() {
    return 'BookingStatusModel(id: $id, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingStatusModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingStatusModelImplCopyWith<_$BookingStatusModelImpl> get copyWith =>
      __$$BookingStatusModelImplCopyWithImpl<_$BookingStatusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingStatusModelImplToJson(
      this,
    );
  }
}

abstract class _BookingStatusModel extends BookingStatusModel {
  const factory _BookingStatusModel(
      {@JsonKey(name: 'bookingId') required final int id,
      @JsonKey(name: 'status')
      @BookingStatusConverter()
      final BookingStatus status}) = _$BookingStatusModelImpl;
  const _BookingStatusModel._() : super._();

  factory _BookingStatusModel.fromJson(Map<String, dynamic> json) =
      _$BookingStatusModelImpl.fromJson;

  @override
  @JsonKey(name: 'bookingId')
  int get id;
  @override
  @JsonKey(name: 'status')
  @BookingStatusConverter()
  BookingStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$BookingStatusModelImplCopyWith<_$BookingStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
