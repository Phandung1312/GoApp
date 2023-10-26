

import 'package:go_app_client/core/usecase/usecase.dart';
import 'package:go_app_client/domain/entities/account.dart';
import 'package:go_app_client/domain/repositories/account_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginUseCase extends NoPramsUseCase<Account>{
  LoginUseCase(this._repository);
  final AccountRepository _repository;
  @override
  Future<Account> call() {
    return _repository.getAccount();
  }

}