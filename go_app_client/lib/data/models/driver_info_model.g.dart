// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverInfoModelImpl _$$DriverInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DriverInfoModelImpl(
      id: json['id'] as int,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      dateOfBirth: json['dateOfBirth'] as num?,
      avtUrl: json['avtUrl'] as String?,
      licensePlate: json['licensePlate'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      vehicleType: _$JsonConverterFromJson<String, VehicleType>(
          json['vehicleType'], const VehicleTypeConverter().fromJson),
      gender: json['gender'] as bool?,
    );

Map<String, dynamic> _$$DriverInfoModelImplToJson(
        _$DriverInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'dateOfBirth': instance.dateOfBirth,
      'avtUrl': instance.avtUrl,
      'licensePlate': instance.licensePlate,
      'rating': instance.rating,
      'vehicleType': _$JsonConverterToJson<String, VehicleType>(
          instance.vehicleType, const VehicleTypeConverter().toJson),
      'gender': instance.gender,
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
