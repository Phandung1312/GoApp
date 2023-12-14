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
      male: json['male'] as bool?,
      nonBlock: json['nonBlock'] as bool?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      dateOfBirth: json['dateOfBirth'] as int?,
      avtUrl: json['avtUrl'] as String?,
      idCard: json['idCard'] as String?,
      licensePlate: json['licensePlate'] as String?,
      status: _$JsonConverterFromJson<String, DriverStatus>(
          json['status'], const DriverStatusConverter().fromJson),
      activityArea: json['activityArea'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      drivingLicense: json['drivingLicense'] as String?,
      vehicleType: _$JsonConverterFromJson<String, VehicleType>(
          json['vehicleType'], const VehicleTypeConverter().fromJson),
      fontDrivingLicenseImg: json['drivingLicenseImg1'] as String?,
      behindDrivingLicenseImg: json['drivingLicenseImg2'] as String?,
      fontCardIdImg: json['cardId1'] as String?,
      behindCardIdImg: json['cardId2'] as String?,
    );

Map<String, dynamic> _$$DriverInfoModelImplToJson(
        _$DriverInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'male': instance.male,
      'nonBlock': instance.nonBlock,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'dateOfBirth': instance.dateOfBirth,
      'avtUrl': instance.avtUrl,
      'idCard': instance.idCard,
      'licensePlate': instance.licensePlate,
      'status': _$JsonConverterToJson<String, DriverStatus>(
          instance.status, const DriverStatusConverter().toJson),
      'activityArea': instance.activityArea,
      'rating': instance.rating,
      'drivingLicense': instance.drivingLicense,
      'vehicleType': _$JsonConverterToJson<String, VehicleType>(
          instance.vehicleType, const VehicleTypeConverter().toJson),
      'drivingLicenseImg1': instance.fontDrivingLicenseImg,
      'drivingLicenseImg2': instance.behindDrivingLicenseImg,
      'cardId1': instance.fontCardIdImg,
      'cardId2': instance.behindCardIdImg,
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
