// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingModelImpl _$$BookingModelImplFromJson(Map<String, dynamic> json) =>
    _$BookingModelImpl(
      id: json['id'] as int,
      createAt: json['createAt'] as num?,
      pickupLocation: json['pickupLocation'] as String?,
      dropOffLocation: json['dropOffLocation'] as String?,
      status: _$JsonConverterFromJson<String, BookingStatus>(
          json['status'], const BookingStatusConverter().fromJson),
      customerId: json['customerId'] as int?,
      distance: (json['distance'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toDouble(),
      predictTime: json['predictTime'] as num?,
      paymentMethod: json['paymentMethod'] as String?,
      driverId: json['driverId'] as int?,
      vehicleType: _$JsonConverterFromJson<String, VehicleType>(
          json['vehicleType'], const VehicleTypeConverter().fromJson),
    );

Map<String, dynamic> _$$BookingModelImplToJson(_$BookingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createAt': instance.createAt,
      'pickupLocation': instance.pickupLocation,
      'dropOffLocation': instance.dropOffLocation,
      'status': _$JsonConverterToJson<String, BookingStatus>(
          instance.status, const BookingStatusConverter().toJson),
      'customerId': instance.customerId,
      'distance': instance.distance,
      'amount': instance.amount,
      'predictTime': instance.predictTime,
      'paymentMethod': instance.paymentMethod,
      'driverId': instance.driverId,
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
