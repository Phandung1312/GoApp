import 'dart:io';

import 'package:dio/dio.dart';
import 'package:go_app_client/config/constants.dart';
import 'package:go_app_client/data/models/client_info_model.dart';
import 'package:go_app_client/data/models/login_info_model.dart';
import 'package:retrofit/retrofit.dart';
part 'account_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class AccountApiService {
  factory AccountApiService(Dio dio, {String baseUrl}) = _AccountApiService;

  @GET('account/login')
  Future<HttpResponse<LoginInfoModel>> login();

  @POST('account/customer')
  @MultiPart()
  Future<HttpResponse<ClientInfoModel>> registerCustomer(
      {@Part(name: "avatar") File? avatar,
      @Part(name: "fullName") required String fullName,
      @Part(name: "dateOfBirth") String? dateOfBirth,
      @Part(name: "isMale") bool? gender,
      @Part(name: "phoneNumber") required String phoneNumber});
}
