
import 'package:freezed_annotation/freezed_annotation.dart';
part 'review_model.freezed.dart';
part 'review_model.g.dart';
@freezed
class ReviewModel with _$ReviewModel {
  
  const factory ReviewModel({
    required int id,
    int? bookingId,
    num? rating,
    String? content,
    int? createAt,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}
