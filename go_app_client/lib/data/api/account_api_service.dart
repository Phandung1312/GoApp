import 'package:dio/dio.dart';
import 'package:go_app_client/config/constants.dart';
import 'package:go_app_client/data/models/account_model.dart';
import 'package:retrofit/retrofit.dart';
part 'account_api_service.g.dart';

@RestApi(baseUrl : baseUrl )
abstract class AccountApiService{
  factory AccountApiService(Dio dio, {String baseUrl}) = _AccountApiService;
  
  @POST('/login')
  Future<AccountModel> login();
}