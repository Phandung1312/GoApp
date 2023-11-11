// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instruction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InstructionModelImpl _$$InstructionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InstructionModelImpl(
      json['distance'] as num?,
      json['heading'] as num?,
      json['sign'] as num?,
      (json['interval'] as List<dynamic>?)?.map((e) => e as num).toList(),
      json['text'] as String?,
      json['time'] as num?,
      json['street_name'] as String?,
      json['last_heading'] as num?,
    );

Map<String, dynamic> _$$InstructionModelImplToJson(
        _$InstructionModelImpl instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'heading': instance.heading,
      'sign': instance.sign,
      'interval': instance.interval,
      'text': instance.text,
      'time': instance.time,
      'street_name': instance.streetName,
      'last_heading': instance.lastHeading,
    };
