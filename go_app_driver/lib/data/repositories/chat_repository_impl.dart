


import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/network/network_info.dart';
import 'package:go_app_driver/data/datasources/chat/chat_remote_datasource.dart';
import 'package:go_app_driver/data/models/chat/chat_model.dart';
import 'package:go_app_driver/domain/repositories/chat_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as : ChatRepository)
class ChatRepositoryImpl implements ChatRepository{
  final NetworkInfo _networkInfo;
  final IChatRemoteDataSource _remoteDataSource;
  ChatRepositoryImpl(this._networkInfo, this._remoteDataSource);
  @override
  Future<Either<Failure, ChatModel>> getAllMessages() async{
      if (await _networkInfo.isConnected) {
      var result = await _remoteDataSource.getAllMessages();
      return result;
    } else {
      return Left(NetworkFailure());
    }
  }

}