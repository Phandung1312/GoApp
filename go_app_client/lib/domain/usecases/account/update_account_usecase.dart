

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/usecase/usecase.dart';
import 'package:go_app_client/data/models/account_request_model.dart';
import 'package:go_app_client/domain/entities/client_info.dart';
import 'package:go_app_client/domain/repositories/account_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UpdateAccountUseCase extends UseCase<ClientInfo, AccountRequestModel>{
  final AccountRepository _accountRepository;
  UpdateAccountUseCase(this._accountRepository);
  @override
  Future<Either<Failure, ClientInfo>> call(AccountRequestModel params) {
    return _accountRepository.update(params);
  }

}