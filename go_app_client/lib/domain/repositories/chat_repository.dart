

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/data/models/chat/chat_model.dart';


abstract class ChatRepository{
  Future<Either<Failure, ChatModel>> getAllMessages();
}