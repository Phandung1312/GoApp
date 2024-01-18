import 'package:freezed_annotation/freezed_annotation.dart';
part 'review.freezed.dart';

@freezed
class Review with _$Review {
  const factory Review({
    @Default(0) int id,
    @Default(0) int bookingId,
    @Default(0.0) double rating,
    @Default("") String content,
    @Default(0) int createAt,
  }) = _Review;
}
