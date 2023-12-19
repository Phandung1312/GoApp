

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/usecase/usecase.dart';
import 'package:go_app_client/domain/entities/client_info.dart';
import 'package:go_app_client/domain/repositories/account_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAccountUseCase extends UseCase<ClientInfo,int>{
  final AccountRepository _repository;
  GetAccountUseCase(this._repository);
  
  @override
  Future<Either<Failure, ClientInfo>> call(int params) {
    return _repository.getAccount(params);
  }
  

  

}