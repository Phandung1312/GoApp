import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:logger/logger.dart';
import 'package:retrofit/dio.dart';


mixin BaseRemoteService {
  Future<Either<Failure, T>> callApi<T>(
      Future<HttpResponse<T>> Function() call) async {
    try {
      var httpResponse = await call();
      Logger().i(httpResponse.response.requestOptions.data);
      Logger().i(httpResponse.response.data);
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        var model = httpResponse.data;
        return Right(model);
      } else {
        return const Left(ApiServerFailure('Có lỗi xảy ra'));
      }
    } on DioException catch (e) {
       Logger().i(e.requestOptions.uri);
       Logger().i(e.requestOptions.data);
      Logger().e("Retrofit error:${e.message}");
      if (e.type == DioExceptionType.receiveTimeout) {
        return Left(ApiTimeOutFailure());
      } else {
        return Left(ExceptionFailure(e));
      }
    }
  }
}
