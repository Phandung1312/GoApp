// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingModelImpl _$$BookingModelImplFromJson(Map<String, dynamic> json) =>
    _$BookingModelImpl(
      id: json['id'] as int,
      createAt: json['createAt'] as num?,
      pickUpLocation: json['pickUpLocation'] as String?,
      pickUpAddress: json['pickUpAddress'] as String?,
      dropOffLocation: json['dropOffLocation'] as String?,
      dropOffAddress: json['dropOffAddress'] as String?,
      status: _$JsonConverterFromJson<String, BookingStatus>(
          json['status'], const BookingStatusConverter().fromJson),
      customer: json['customer'] == null
          ? null
          : CustomerInfoModel.fromJson(
              json['customer'] as Map<String, dynamic>),
      distance: (json['distance'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toDouble(),
      predictTime: json['predictTime'] as num?,
      payment: json['payment'] == null
          ? null
          : PaymentModel.fromJson(json['payment'] as Map<String, dynamic>),
      review: json['review'] == null
          ? null
          : ReviewModel.fromJson(json['review'] as Map<String, dynamic>),
      startTime: json['startTime'] as num?,
      endTime: json['endTime'] as num?,
      vehicleType: _$JsonConverterFromJson<String, VehicleType>(
          json['vehicleType'], const VehicleTypeConverter().fromJson),
    );

Map<String, dynamic> _$$BookingModelImplToJson(_$BookingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createAt': instance.createAt,
      'pickUpLocation': instance.pickUpLocation,
      'pickUpAddress': instance.pickUpAddress,
      'dropOffLocation': instance.dropOffLocation,
      'dropOffAddress': instance.dropOffAddress,
      'status': _$JsonConverterToJson<String, BookingStatus>(
          instance.status, const BookingStatusConverter().toJson),
      'customer': instance.customer,
      'distance': instance.distance,
      'amount': instance.amount,
      'predictTime': instance.predictTime,
      'payment': instance.payment,
      'review': instance.review,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'vehicleType': _$JsonConverterToJson<String, VehicleType>(
          instance.vehicleType, const VehicleTypeConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
