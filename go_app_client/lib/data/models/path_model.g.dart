// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'path_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PathModelImpl _$$PathModelImplFromJson(Map<String, dynamic> json) =>
    _$PathModelImpl(
      json['distance'] as num?,
      json['weight'] as num?,
      json['time'] as int?,
      json['transfers'] as int?,
      json['points_encoded'] as bool?,
      (json['bbox'] as List<dynamic>?)?.map((e) => e as num).toList(),
      json['points'] as String?,
      (json['instructions'] as List<dynamic>?)
          ?.map((e) => InstructionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['snapped_waypoints'] as String?,
    );

Map<String, dynamic> _$$PathModelImplToJson(_$PathModelImpl instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'weight': instance.weight,
      'time': instance.time,
      'transfers': instance.transfers,
      'points_encoded': instance.pointsEncoded,
      'bbox': instance.bbox,
      'points': instance.points,
      'instructions': instance.instructions,
      'snapped_waypoints': instance.snappedWaypoints,
    };
