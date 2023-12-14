// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverStatusModelImpl _$$DriverStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DriverStatusModelImpl(
      driverId: json['driverId'] as int?,
      driverStatus: _$JsonConverterFromJson<String, DriverStatus>(
          json['driverStatus'], const DriverStatusConverter().fromJson),
    );

Map<String, dynamic> _$$DriverStatusModelImplToJson(
        _$DriverStatusModelImpl instance) =>
    <String, dynamic>{
      'driverId': instance.driverId,
      'driverStatus': _$JsonConverterToJson<String, DriverStatus>(
          instance.driverStatus, const DriverStatusConverter().toJson),
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
