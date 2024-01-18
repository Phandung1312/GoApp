// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$History {
  int get id => throw _privateConstructorUsedError;
  BookingStatus get bookingStatus => throw _privateConstructorUsedError;
  VehicleType get vehicleType => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  int get createAt => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  int get startTime => throw _privateConstructorUsedError;
  int get endTime => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  CustomerInfo get customerInfo => throw _privateConstructorUsedError;
  Review get review => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryCopyWith<History> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryCopyWith<$Res> {
  factory $HistoryCopyWith(History value, $Res Function(History) then) =
      _$HistoryCopyWithImpl<$Res, History>;
  @useResult
  $Res call(
      {int id,
      BookingStatus bookingStatus,
      VehicleType vehicleType,
      String from,
      String to,
      int createAt,
      int price,
      String paymentMethod,
      int startTime,
      int endTime,
      double distance,
      CustomerInfo customerInfo,
      Review review});

  $CustomerInfoCopyWith<$Res> get customerInfo;
  $ReviewCopyWith<$Res> get review;
}

/// @nodoc
class _$HistoryCopyWithImpl<$Res, $Val extends History>
    implements $HistoryCopyWith<$Res> {
  _$HistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookingStatus = null,
    Object? vehicleType = null,
    Object? from = null,
    Object? to = null,
    Object? createAt = null,
    Object? price = null,
    Object? paymentMethod = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? distance = null,
    Object? customerInfo = null,
    Object? review = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookingStatus: null == bookingStatus
          ? _value.bookingStatus
          : bookingStatus // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      customerInfo: null == customerInfo
          ? _value.customerInfo
          : customerInfo // ignore: cast_nullable_to_non_nullable
              as CustomerInfo,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerInfoCopyWith<$Res> get customerInfo {
    return $CustomerInfoCopyWith<$Res>(_value.customerInfo, (value) {
      return _then(_value.copyWith(customerInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewCopyWith<$Res> get review {
    return $ReviewCopyWith<$Res>(_value.review, (value) {
      return _then(_value.copyWith(review: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HistoryImplCopyWith<$Res> implements $HistoryCopyWith<$Res> {
  factory _$$HistoryImplCopyWith(
          _$HistoryImpl value, $Res Function(_$HistoryImpl) then) =
      __$$HistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      BookingStatus bookingStatus,
      VehicleType vehicleType,
      String from,
      String to,
      int createAt,
      int price,
      String paymentMethod,
      int startTime,
      int endTime,
      double distance,
      CustomerInfo customerInfo,
      Review review});

  @override
  $CustomerInfoCopyWith<$Res> get customerInfo;
  @override
  $ReviewCopyWith<$Res> get review;
}

/// @nodoc
class __$$HistoryImplCopyWithImpl<$Res>
    extends _$HistoryCopyWithImpl<$Res, _$HistoryImpl>
    implements _$$HistoryImplCopyWith<$Res> {
  __$$HistoryImplCopyWithImpl(
      _$HistoryImpl _value, $Res Function(_$HistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookingStatus = null,
    Object? vehicleType = null,
    Object? from = null,
    Object? to = null,
    Object? createAt = null,
    Object? price = null,
    Object? paymentMethod = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? distance = null,
    Object? customerInfo = null,
    Object? review = null,
  }) {
    return _then(_$HistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookingStatus: null == bookingStatus
          ? _value.bookingStatus
          : bookingStatus // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      customerInfo: null == customerInfo
          ? _value.customerInfo
          : customerInfo // ignore: cast_nullable_to_non_nullable
              as CustomerInfo,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review,
    ));
  }
}

/// @nodoc

class _$HistoryImpl implements _History {
  const _$HistoryImpl(
      {this.id = 0,
      this.bookingStatus = BookingStatus.waitting,
      this.vehicleType = VehicleType.MOTORCYCLE,
      this.from = "",
      this.to = '',
      this.createAt = 0,
      this.price = 0,
      this.paymentMethod = "",
      this.startTime = 0,
      this.endTime = 0,
      this.distance = 0.0,
      this.customerInfo = const CustomerInfo(),
      this.review = const Review()});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final BookingStatus bookingStatus;
  @override
  @JsonKey()
  final VehicleType vehicleType;
  @override
  @JsonKey()
  final String from;
  @override
  @JsonKey()
  final String to;
  @override
  @JsonKey()
  final int createAt;
  @override
  @JsonKey()
  final int price;
  @override
  @JsonKey()
  final String paymentMethod;
  @override
  @JsonKey()
  final int startTime;
  @override
  @JsonKey()
  final int endTime;
  @override
  @JsonKey()
  final double distance;
  @override
  @JsonKey()
  final CustomerInfo customerInfo;
  @override
  @JsonKey()
  final Review review;

  @override
  String toString() {
    return 'History(id: $id, bookingStatus: $bookingStatus, vehicleType: $vehicleType, from: $from, to: $to, createAt: $createAt, price: $price, paymentMethod: $paymentMethod, startTime: $startTime, endTime: $endTime, distance: $distance, customerInfo: $customerInfo, review: $review)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookingStatus, bookingStatus) ||
                other.bookingStatus == bookingStatus) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.customerInfo, customerInfo) ||
                other.customerInfo == customerInfo) &&
            (identical(other.review, review) || other.review == review));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      bookingStatus,
      vehicleType,
      from,
      to,
      createAt,
      price,
      paymentMethod,
      startTime,
      endTime,
      distance,
      customerInfo,
      review);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryImplCopyWith<_$HistoryImpl> get copyWith =>
      __$$HistoryImplCopyWithImpl<_$HistoryImpl>(this, _$identity);
}

abstract class _History implements History {
  const factory _History(
      {final int id,
      final BookingStatus bookingStatus,
      final VehicleType vehicleType,
      final String from,
      final String to,
      final int createAt,
      final int price,
      final String paymentMethod,
      final int startTime,
      final int endTime,
      final double distance,
      final CustomerInfo customerInfo,
      final Review review}) = _$HistoryImpl;

  @override
  int get id;
  @override
  BookingStatus get bookingStatus;
  @override
  VehicleType get vehicleType;
  @override
  String get from;
  @override
  String get to;
  @override
  int get createAt;
  @override
  int get price;
  @override
  String get paymentMethod;
  @override
  int get startTime;
  @override
  int get endTime;
  @override
  double get distance;
  @override
  CustomerInfo get customerInfo;
  @override
  Review get review;
  @override
  @JsonKey(ignore: true)
  _$$HistoryImplCopyWith<_$HistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
