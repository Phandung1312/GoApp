


import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/usecase/usecase.dart';
import 'package:go_app_driver/data/models/driver_info_model.dart';
import 'package:go_app_driver/domain/entities/register_info.dart';
import 'package:go_app_driver/domain/repositories/account_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RegisterDriverUseCase extends UseCase<DriverInfoModel, RegisterInfo>{
   RegisterDriverUseCase(this._repository);
  final AccountRepository _repository;
  @override
  Future<Either<Failure, DriverInfoModel>> call(RegisterInfo params) {
    return _repository.registerDriver(params);
  }

}