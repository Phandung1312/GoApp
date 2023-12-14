

import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/data/models/chat/chat_model.dart';


abstract class ChatRepository{
  Future<Either<Failure, ChatModel>> getAllMessages();
}