import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/usecase/usecase.dart';
import 'package:go_app_driver/domain/repositories/account_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LogOutUseCase extends NoPramsUseCase<void> {
  final AccountRepository _repository;
  LogOutUseCase(this._repository);
  @override
  Future<Either<Failure, void>> call() {
    return _repository.logOut();
  }
}
