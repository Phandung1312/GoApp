
import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/usecase/usecase.dart';
import 'package:go_app_driver/domain/entities/enum/account_status.dart';
import 'package:go_app_driver/domain/repositories/account_repository.dart';
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