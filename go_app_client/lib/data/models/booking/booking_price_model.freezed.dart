// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingPriceModel _$BookingPriceModelFromJson(Map<String, dynamic> json) {
  return _BookingPriceModel.fromJson(json);
}

/// @nodoc
mixin _$BookingPriceModel {
  String? get pickUpLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'dropOffLocation')
  String? get desLocation => throw _privateConstructorUsedError;
  AmountModel? get amounts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingPriceModelCopyWith<BookingPriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingPriceModelCopyWith<$Res> {
  factory $BookingPriceModelCopyWith(
          BookingPriceModel value, $Res Function(BookingPriceModel) then) =
      _$BookingPriceModelCopyWithImpl<$Res, BookingPriceModel>;
  @useResult
  $Res call(
      {String? pickUpLocation,
      @JsonKey(name: 'dropOffLocation') String? desLocation,
      AmountModel? amounts});

  $AmountModelCopyWith<$Res>? get amounts;
}

/// @nodoc
class _$BookingPriceModelCopyWithImpl<$Res, $Val extends BookingPriceModel>
    implements $BookingPriceModelCopyWith<$Res> {
  _$BookingPriceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickUpLocation = freezed,
    Object? desLocation = freezed,
    Object? amounts = freezed,
  }) {
    return _then(_value.copyWith(
      pickUpLocation: freezed == pickUpLocation
          ? _value.pickUpLocation
          : pickUpLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      desLocation: freezed == desLocation
          ? _value.desLocation
          : desLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      amounts: freezed == amounts
          ? _value.amounts
          : amounts // ignore: cast_nullable_to_non_nullable
              as AmountModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountModelCopyWith<$Res>? get amounts {
    if (_value.amounts == null) {
      return null;
    }

    return $AmountModelCopyWith<$Res>(_value.amounts!, (value) {
      return _then(_value.copyWith(amounts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingPriceModelImplCopyWith<$Res>
    implements $BookingPriceModelCopyWith<$Res> {
  factory _$$BookingPriceModelImplCopyWith(_$BookingPriceModelImpl value,
          $Res Function(_$BookingPriceModelImpl) then) =
      __$$BookingPriceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? pickUpLocation,
      @JsonKey(name: 'dropOffLocation') String? desLocation,
      AmountModel? amounts});

  @override
  $AmountModelCopyWith<$Res>? get amounts;
}

/// @nodoc
class __$$BookingPriceModelImplCopyWithImpl<$Res>
    extends _$BookingPriceModelCopyWithImpl<$Res, _$BookingPriceModelImpl>
    implements _$$BookingPriceModelImplCopyWith<$Res> {
  __$$BookingPriceModelImplCopyWithImpl(_$BookingPriceModelImpl _value,
      $Res Function(_$BookingPriceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickUpLocation = freezed,
    Object? desLocation = freezed,
    Object? amounts = freezed,
  }) {
    return _then(_$BookingPriceModelImpl(
      pickUpLocation: freezed == pickUpLocation
          ? _value.pickUpLocation
          : pickUpLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      desLocation: freezed == desLocation
          ? _value.desLocation
          : desLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      amounts: freezed == amounts
          ? _value.amounts
          : amounts // ignore: cast_nullable_to_non_nullable
              as AmountModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingPriceModelImpl implements _BookingPriceModel {
  const _$BookingPriceModelImpl(
      {this.pickUpLocation,
      @JsonKey(name: 'dropOffLocation') this.desLocation,
      this.amounts});

  factory _$BookingPriceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingPriceModelImplFromJson(json);

  @override
  final String? pickUpLocation;
  @override
  @JsonKey(name: 'dropOffLocation')
  final String? desLocation;
  @override
  final AmountModel? amounts;

  @override
  String toString() {
    return 'BookingPriceModel(pickUpLocation: $pickUpLocation, desLocation: $desLocation, amounts: $amounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingPriceModelImpl &&
            (identical(other.pickUpLocation, pickUpLocation) ||
                other.pickUpLocation == pickUpLocation) &&
            (identical(other.desLocation, desLocation) ||
                other.desLocation == desLocation) &&
            (identical(other.amounts, amounts) || other.amounts == amounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, pickUpLocation, desLocation, amounts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingPriceModelImplCopyWith<_$BookingPriceModelImpl> get copyWith =>
      __$$BookingPriceModelImplCopyWithImpl<_$BookingPriceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingPriceModelImplToJson(
      this,
    );
  }
}

abstract class _BookingPriceModel implements BookingPriceModel {
  const factory _BookingPriceModel(
      {final String? pickUpLocation,
      @JsonKey(name: 'dropOffLocation') final String? desLocation,
      final AmountModel? amounts}) = _$BookingPriceModelImpl;

  factory _BookingPriceModel.fromJson(Map<String, dynamic> json) =
      _$BookingPriceModelImpl.fromJson;

  @override
  String? get pickUpLocation;
  @override
  @JsonKey(name: 'dropOffLocation')
  String? get desLocation;
  @override
  AmountModel? get amounts;
  @override
  @JsonKey(ignore: true)
  _$$BookingPriceModelImplCopyWith<_$BookingPriceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AmountModel _$AmountModelFromJson(Map<String, dynamic> json) {
  return _AmountModel.fromJson(json);
}

/// @nodoc
mixin _$AmountModel {
  @JsonKey(name: '1')
  num? get motorPrice => throw _privateConstructorUsedError;
  @JsonKey(name: '2')
  num? get carPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmountModelCopyWith<AmountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountModelCopyWith<$Res> {
  factory $AmountModelCopyWith(
          AmountModel value, $Res Function(AmountModel) then) =
      _$AmountModelCopyWithImpl<$Res, AmountModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '1') num? motorPrice, @JsonKey(name: '2') num? carPrice});
}

/// @nodoc
class _$AmountModelCopyWithImpl<$Res, $Val extends AmountModel>
    implements $AmountModelCopyWith<$Res> {
  _$AmountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? motorPrice = freezed,
    Object? carPrice = freezed,
  }) {
    return _then(_value.copyWith(
      motorPrice: freezed == motorPrice
          ? _value.motorPrice
          : motorPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      carPrice: freezed == carPrice
          ? _value.carPrice
          : carPrice // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AmountModelImplCopyWith<$Res>
    implements $AmountModelCopyWith<$Res> {
  factory _$$AmountModelImplCopyWith(
          _$AmountModelImpl value, $Res Function(_$AmountModelImpl) then) =
      __$$AmountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '1') num? motorPrice, @JsonKey(name: '2') num? carPrice});
}

/// @nodoc
class __$$AmountModelImplCopyWithImpl<$Res>
    extends _$AmountModelCopyWithImpl<$Res, _$AmountModelImpl>
    implements _$$AmountModelImplCopyWith<$Res> {
  __$$AmountModelImplCopyWithImpl(
      _$AmountModelImpl _value, $Res Function(_$AmountModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? motorPrice = freezed,
    Object? carPrice = freezed,
  }) {
    return _then(_$AmountModelImpl(
      motorPrice: freezed == motorPrice
          ? _value.motorPrice
          : motorPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      carPrice: freezed == carPrice
          ? _value.carPrice
          : carPrice // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AmountModelImpl implements _AmountModel {
  const _$AmountModelImpl(
      {@JsonKey(name: '1') this.motorPrice, @JsonKey(name: '2') this.carPrice});

  factory _$AmountModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AmountModelImplFromJson(json);

  @override
  @JsonKey(name: '1')
  final num? motorPrice;
  @override
  @JsonKey(name: '2')
  final num? carPrice;

  @override
  String toString() {
    return 'AmountModel(motorPrice: $motorPrice, carPrice: $carPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountModelImpl &&
            (identical(other.motorPrice, motorPrice) ||
                other.motorPrice == motorPrice) &&
            (identical(other.carPrice, carPrice) ||
                other.carPrice == carPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, motorPrice, carPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountModelImplCopyWith<_$AmountModelImpl> get copyWith =>
      __$$AmountModelImplCopyWithImpl<_$AmountModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AmountModelImplToJson(
      this,
    );
  }
}

abstract class _AmountModel implements AmountModel {
  const factory _AmountModel(
      {@JsonKey(name: '1') final num? motorPrice,
      @JsonKey(name: '2') final num? carPrice}) = _$AmountModelImpl;

  factory _AmountModel.fromJson(Map<String, dynamic> json) =
      _$AmountModelImpl.fromJson;

  @override
  @JsonKey(name: '1')
  num? get motorPrice;
  @override
  @JsonKey(name: '2')
  num? get carPrice;
  @override
  @JsonKey(ignore: true)
  _$$AmountModelImplCopyWith<_$AmountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
