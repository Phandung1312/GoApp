
import 'package:go_app_driver/core/usecase/usecase.dart';
import 'package:go_app_driver/domain/entities/account.dart';
import 'package:go_app_driver/domain/repositories/account_repository.dart';
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