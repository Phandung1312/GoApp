// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingRequestImpl _$$BookingRequestImplFromJson(Map<String, dynamic> json) =>
    _$BookingRequestImpl(
      pickUpLocation: json['pickUpLocation'] as String? ?? "",
      dropOffLocation: json['dropOffLocation'] as String? ?? "",
      vehicleType: json['vehicleType'] == null
          ? VehicleType.car
          : const VehicleTypeConverter()
              .fromJson(json['vehicleType'] as String),
    );

Map<String, dynamic> _$$BookingRequestImplToJson(
        _$BookingRequestImpl instance) =>
    <String, dynamic>{
      'pickUpLocation': instance.pickUpLocation,
      'dropOffLocation': instance.dropOffLocation,
      'vehicleType': const VehicleTypeConverter().toJson(instance.vehicleType),
    };
