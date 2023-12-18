

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/usecase/usecase.dart';
import 'package:go_app_client/data/models/history/review_request_model.dart';
import 'package:go_app_client/domain/repositories/booking_repository.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class CreateReviewUseCase extends UseCase<bool, ReviewRequestModel>{
  final BookingRepository _repository;
  CreateReviewUseCase(this._repository);
  @override
  Future<Either<Failure, bool>> call(ReviewRequestModel params) {
    return _repository.createReview(params);
  }

}