

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/usecase/usecase.dart';
import 'package:go_app_client/domain/entities/enum/account_status.dart';
import 'package:go_app_client/domain/repositories/account_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginUseCase extends NoPramsUseCase<AccountStatus>{
  LoginUseCase(this._repository);
  final AccountRepository _repository;
  @override
  Future<Either<Failure, AccountStatus>> call() {
    return _repository.login();
  }

}