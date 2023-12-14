

import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/usecase/usecase.dart';
import 'package:go_app_driver/data/models/chat/chat_model.dart';
import 'package:go_app_driver/domain/repositories/chat_repository.dart';
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