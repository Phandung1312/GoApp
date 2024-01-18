import 'package:dio/dio.dart';
import 'package:go_app_client/config/constants.dart';
import 'package:go_app_client/data/models/pagination_model.dart';
import 'package:retrofit/retrofit.dart';

part 'payment_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class PaymentApiService {
  factory PaymentApiService(Dio dio, {String baseUrl}) = _PaymentApiService;

  @GET('conversation')
  Future<HttpResponse<PaginationModel>> getPayments(
    @Query('page') int? page,
    @Query('size') int? size,
  );
}
