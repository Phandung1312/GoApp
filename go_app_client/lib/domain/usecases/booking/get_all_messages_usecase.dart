

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/usecase/usecase.dart';
import 'package:go_app_client/data/models/chat/chat_model.dart';
import 'package:go_app_client/domain/repositories/chat_repository.dart';

import 'package:injectable/injectable.dart';

@lazySingleton
class GetAllMessagesUseCase extends NoPramsUseCase<ChatModel>{
  final ChatRepository _chatRepository;
  const GetAllMessagesUseCase(this._chatRepository);

  @override
  Future<Either<Failure, ChatModel>> call() {
    return _chatRepository.getAllMessages();
  }
  

}