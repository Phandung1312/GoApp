

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/data/models/history/review_request_model.dart';
import 'package:go_app_client/domain/usecases/history/create_review_usecase.dart';
import 'package:injectable/injectable.dart';


part 'review_cubit.freezed.dart';
part 'review_state.dart';

@injectable
class ReviewCubit extends Cubit<ReviewState>{
  final CreateReviewUseCase _createReviewUseCase;
  ReviewCubit(this._createReviewUseCase) : super(const ReviewState.initial());

  void createReview(ReviewRequestModel reviewRequestModel) async{
    EasyLoading.show();
    var either = await _createReviewUseCase(reviewRequestModel);
    EasyLoading.dismiss();
    either.fold((l) => null, (r) => emit(const ReviewState.createSuccess()));
  }
}

