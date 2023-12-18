// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverLocationModelImpl _$$DriverLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DriverLocationModelImpl(
      driverId: json['driverId'] as int?,
      location: json['location'] as String?,
      routeEncode: json['routeEncode'] as String?,
      bearing: (json['bearing'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$DriverLocationModelImplToJson(
        _$DriverLocationModelImpl instance) =>
    <String, dynamic>{
      'driverId': instance.driverId,
      'location': instance.location,
      'routeEncode': instance.routeEncode,
      'bearing': instance.bearing,
    };
