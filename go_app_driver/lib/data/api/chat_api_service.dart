


import 'package:dio/dio.dart';
import 'package:go_app_driver/config/constants.dart';
import 'package:go_app_driver/data/models/chat/chat_model.dart';
import 'package:retrofit/retrofit.dart';
part 'chat_api_service.g.dart';
@RestApi(baseUrl : baseUrl )
abstract class ChatApiService{
  factory ChatApiService(Dio dio, {String baseUrl}) = _ChatApiService;
  
    @GET('conversation')
  Future<HttpResponse<ChatModel>> getAllMessages(
    
  );
  
}