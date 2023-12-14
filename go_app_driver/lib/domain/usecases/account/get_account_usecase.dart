

import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/usecase/usecase.dart';
import 'package:go_app_driver/domain/entities/driver_info.dart';
import 'package:go_app_driver/domain/repositories/account_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAccountUseCase extends NoPramsUseCase<DriverInfo>{
  final AccountRepository _accountRepository;
  GetAccountUseCase(this._accountRepository);
  @override
  Future<Either<Failure, DriverInfo>> call() {
    return _accountRepository.getAccount();
  }
 
}