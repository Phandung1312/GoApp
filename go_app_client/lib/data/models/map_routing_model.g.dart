// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_routing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MapRoutingModelImpl _$$MapRoutingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MapRoutingModelImpl(
      license: json['license'] as String?,
      code: json['code'] as String?,
      messages: json['messages'] as String?,
      paths: (json['paths'] as List<dynamic>?)
          ?.map((e) => PathModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MapRoutingModelImplToJson(
        _$MapRoutingModelImpl instance) =>
    <String, dynamic>{
      'license': instance.license,
      'code': instance.code,
      'messages': instance.messages,
      'paths': instance.paths,
    };
