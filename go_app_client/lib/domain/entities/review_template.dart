
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'review_template.freezed.dart';
@freezed
class ReviewTemplate with _$ReviewTemplate{
  const factory ReviewTemplate({
    ImageProvider<Object>? image,
    String? content,
  }) = _ReviewTemplate;
}