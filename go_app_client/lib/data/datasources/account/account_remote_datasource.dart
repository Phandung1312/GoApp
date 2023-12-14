

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/network/base_remote_service.dart';
import 'package:go_app_client/data/api/account_api_service.dart';
import 'package:go_app_client/data/models/client_info_model.dart';
import 'package:go_app_client/data/models/login_info_model.dart';
import 'package:go_app_client/domain/entities/enum/account_status.dart';
import 'package:injectable/injectable.dart';

abstract class IAccountRemoteDataSource{
  Future<Either<Failure, LoginInfoModel>> login();
  Future<Either<Failure, ClientInfoModel>> registerCustomer(String fullNamne,String mobile);
  
}

@LazySingleton(as : IAccountRemoteDataSource)
class AccountRemoteDateSource with BaseRemoteService implements IAccountRemoteDataSource{
  AccountRemoteDateSource(this._accountApiService);
  final AccountApiService _accountApiService;
  
  @override
  Future<Either<Failure, LoginInfoModel>> login() async{
    var result = await callApi(() => _accountApiService.login());
    return result;
  }
  
  @override
  Future<Either<Failure, ClientInfoModel>> registerCustomer(String fullName,String mobile) async{
    var result = await callApi(() => _accountApiService.registerCustomer(phoneNumber: mobile, fullName: fullName));
    return result;
  }


}