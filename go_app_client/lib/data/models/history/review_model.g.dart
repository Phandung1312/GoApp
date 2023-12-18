// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewModelImpl _$$ReviewModelImplFromJson(Map<String, dynamic> json) =>
    _$ReviewModelImpl(
      id: json['id'] as int,
      bookingId: json['bookingId'] as int?,
      rating: json['rating'] as num?,
      content: json['content'] as String?,
      createAt: json['createAt'] as int?,
    );

Map<String, dynamic> _$$ReviewModelImplToJson(_$ReviewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookingId': instance.bookingId,
      'rating': instance.rating,
      'content': instance.content,
      'createAt': instance.createAt,
    };
