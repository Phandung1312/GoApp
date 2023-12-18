// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_cancel_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingCancelResponseImpl _$$BookingCancelResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingCancelResponseImpl(
      id: json['id'] as int,
      reasonType: json['reasonType'] as String?,
      content: json['content'] as String?,
      status: _$JsonConverterFromJson<String, BookingStatus>(
          json['status'], const BookingStatusConverter().fromJson),
    );

Map<String, dynamic> _$$BookingCancelResponseImplToJson(
        _$BookingCancelResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reasonType': instance.reasonType,
      'content': instance.content,
      'status': _$JsonConverterToJson<String, BookingStatus>(
          instance.status, const BookingStatusConverter().toJson),
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
