


import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/network/base_remote_service.dart';
import 'package:go_app_client/data/api/chat_api_service.dart';
import 'package:go_app_client/data/models/chat/chat_model.dart';

import 'package:injectable/injectable.dart';

abstract class IChatRemoteDataSource{
   Future<Either<Failure, ChatModel>> getAllMessages();
}

@LazySingleton(as : IChatRemoteDataSource)
class ChatRemoteDataSource with BaseRemoteService implements IChatRemoteDataSource{
  final ChatApiService _chatApiService;
  ChatRemoteDataSource(this._chatApiService);
  @override
  Future<Either<Failure, ChatModel>> getAllMessages() async {
    var result = await callApi(() => _chatApiService.getAllMessages());
    return result;
  }

}

