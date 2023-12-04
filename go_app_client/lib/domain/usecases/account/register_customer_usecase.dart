
import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/usecase/usecase.dart';
import 'package:go_app_client/data/models/client_info_request.dart';
import 'package:go_app_client/domain/repositories/account_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RegisterCustomerUseCase extends UseCase<bool, ClientInfoRequest>{
   RegisterCustomerUseCase(this._repository);
  final AccountRepository _repository;
  @override
  Future<Either<Failure, bool>> call(ClientInfoRequest params)  async{
    return await _repository.registerCustomer(params);
  }

}