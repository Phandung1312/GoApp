import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/usecase/usecase.dart';
import 'package:go_app_client/domain/repositories/account_repository.dart';
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
