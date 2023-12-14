// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingStatusModelImpl _$$BookingStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingStatusModelImpl(
      id: json['bookingId'] as int,
      status: json['status'] == null
          ? BookingStatus.unknown
          : const BookingStatusConverter().fromJson(json['status'] as String),
    );

Map<String, dynamic> _$$BookingStatusModelImplToJson(
        _$BookingStatusModelImpl instance) =>
    <String, dynamic>{
      'bookingId': instance.id,
      'status': const BookingStatusConverter().toJson(instance.status),
    };
