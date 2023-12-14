import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/network/base_remote_service.dart';
import 'package:go_app_driver/data/api/account_api_service.dart';
import 'package:go_app_driver/data/models/driver_info_model.dart';
import 'package:go_app_driver/data/models/login_info_model.dart';

import 'package:go_app_driver/domain/entities/register_info.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';


abstract class IAccountRemoteDataSource {
  Future<Either<Failure, LoginInfoModel>> login();
  Future<Either<Failure, DriverInfoModel>> registerDriver(
      RegisterInfo registerInfo);
  Future<Either<Failure, DriverInfoModel>> getAccount(
      int id);
}

@LazySingleton(as: IAccountRemoteDataSource)
class AccountRemoteDateSource
    with BaseRemoteService
    implements IAccountRemoteDataSource {
  AccountRemoteDateSource(this._accountApiService);
  final AccountApiService _accountApiService;

  @override
  Future<Either<Failure, LoginInfoModel>> login() async {
    var result = await callApi(() => _accountApiService.login());
    return result;
  }

  @override
  Future<Either<Failure, DriverInfoModel>> registerDriver(
      RegisterInfo registerInfo) async {
    var result = await callApi(() => _accountApiService.regiterDriver(
        registerInfo.fullname,
        DateFormat('yyyy-MM-dd').format(registerInfo.dateOfBirth!),
        registerInfo.phoneNumber,
        registerInfo.gender,
        registerInfo.avatar!,
        registerInfo.idCard,
        registerInfo.licensePlate,
        registerInfo.drivingLicense,
        registerInfo.idCardImages!,
        registerInfo.drivingLicenseImages!,
        registerInfo.vehicleType.name));
    return result;
  }
  
  @override
  Future<Either<Failure, DriverInfoModel>> getAccount(int id) async{
    var result = await callApi(() => _accountApiService.getAccount(id));
    return result;
  }
}
