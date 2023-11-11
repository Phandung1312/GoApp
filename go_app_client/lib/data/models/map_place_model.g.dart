// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MapPlaceModelImpl _$$MapPlaceModelImplFromJson(Map<String, dynamic> json) =>
    _$MapPlaceModelImpl(
      json['display'] as String?,
      json['name'] as String?,
      json['hs_num'] as String?,
      json['street'] as String?,
      json['city_id'] as int?,
      json['city'] as String?,
      json['district_id'] as int?,
      json['district'] as String?,
      json['ward_id'] as int?,
      json['ward'] as String?,
      (json['lat'] as num?)?.toDouble(),
      (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MapPlaceModelImplToJson(_$MapPlaceModelImpl instance) =>
    <String, dynamic>{
      'display': instance.display,
      'name': instance.name,
      'hs_num': instance.hsNum,
      'street': instance.street,
      'city_id': instance.cityId,
      'city': instance.city,
      'district_id': instance.districtId,
      'district': instance.district,
      'ward_id': instance.wardId,
      'ward': instance.ward,
      'lat': instance.lat,
      'lng': instance.lng,
    };
