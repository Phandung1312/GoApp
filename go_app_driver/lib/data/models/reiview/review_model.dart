

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/core/utils/mapper/data_mapper.dart';
import 'package:go_app_driver/domain/entities/review.dart';
part 'review_model.freezed.dart';
part 'review_model.g.dart';
@freezed
class ReviewModel with _$ReviewModel implements DataMapper<Review>{
  const ReviewModel._();
  const factory ReviewModel({
    required int  id,
    int? bookingId,
    double? rating,
    String? content,
    int? createAt,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) => _$ReviewModelFromJson(json);
  
  @override
  Review maptoEntity() {
    return Review(
      id: id,
      bookingId: bookingId ?? 0,
      rating: rating ?? 0.0,
      content: content ?? "",
      createAt: createAt ?? 0,
    );
  }
}