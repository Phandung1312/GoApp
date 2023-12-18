// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewRequestModelImpl _$$ReviewRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewRequestModelImpl(
      bookingId: json['bookingId'] as int? ?? 0,
      rating: json['rating'] as int? ?? 0,
      content: json['content'] as String? ?? "",
    );

Map<String, dynamic> _$$ReviewRequestModelImplToJson(
        _$ReviewRequestModelImpl instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'rating': instance.rating,
      'content': instance.content,
    };
