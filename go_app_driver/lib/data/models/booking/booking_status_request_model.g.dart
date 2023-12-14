// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_status_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingStatusRequestModelImpl _$$BookingStatusRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingStatusRequestModelImpl(
      uid: json['uid'] as int? ?? 0,
      bookingId: json['bookingId'] as int? ?? 0,
      bookingStatus: json['bookingStatus'] == null
          ? BookingStatus.unknown
          : const BookingStatusConverter()
              .fromJson(json['bookingStatus'] as String),
    );

Map<String, dynamic> _$$BookingStatusRequestModelImplToJson(
        _$BookingStatusRequestModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'bookingId': instance.bookingId,
      'bookingStatus':
          const BookingStatusConverter().toJson(instance.bookingStatus),
    };
