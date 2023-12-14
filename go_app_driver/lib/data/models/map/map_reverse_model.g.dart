// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_reverse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MapReverseModelImpl _$$MapReverseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MapReverseModelImpl(
      json['ref_id'] as String?,
      json['address'] as String?,
      json['name'] as String?,
      json['display'] as String?,
      (json['distance'] as num?)?.toDouble(),
      (json['lat'] as num?)?.toDouble(),
      (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MapReverseModelImplToJson(
        _$MapReverseModelImpl instance) =>
    <String, dynamic>{
      'ref_id': instance.refId,
      'address': instance.address,
      'name': instance.name,
      'display': instance.display,
      'distance': instance.distance,
      'lat': instance.lat,
      'lng': instance.lng,
    };
