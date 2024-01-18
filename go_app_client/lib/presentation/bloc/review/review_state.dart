part of 'review_cubit.dart';

@freezed
class ReviewState with _$ReviewState{
  const factory ReviewState.initial() = ReviewInitial;
  const factory ReviewState.createSuccess() = ReviewCreateSuccess;
  const factory ReviewState.createError() = ReviewCreateError;
}