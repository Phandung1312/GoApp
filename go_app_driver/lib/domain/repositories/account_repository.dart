

import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/data/models/driver_info_model.dart';
import 'package:go_app_driver/domain/entities/driver_info.dart';
import 'package:go_app_driver/domain/entities/enum/account_status.dart';
import 'package:go_app_driver/domain/entities/register_info.dart';

abstract class AccountRepository{
  Future<Either<Failure, AccountStatus>> login();
  Future<Either<Failure, DriverInfoModel>> registerDriver(RegisterInfo registerInfo);
  Future<Either<Failure, DriverInfo>> getAccount();
}