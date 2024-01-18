// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PanigationModelImpl _$$PanigationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PanigationModelImpl(
      page: json['page'] as int,
      content: (json['content'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$PanigationModelImplToJson(
        _$PanigationModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'content': instance.content,
    };
