import 'package:freezed_annotation/freezed_annotation.dart';
part 'review_request_model.freezed.dart';
part 'review_request_model.g.dart';

@freezed
class ReviewRequestModel with _$ReviewRequestModel {
  const ReviewRequestModel._();
  const factory ReviewRequestModel({
    @Default(0) int bookingId,
    @Default(0) int rating,
    @Default("") String content,
  }) = _ReviewRequestModel;

  factory ReviewRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewRequestModelFromJson(json);

  @override
  Map<String, dynamic> toJson() {
     return <String, dynamic>{
            'bookingId' : bookingId,
            'rating' : rating,
            'content' : content
        };
  }
}
