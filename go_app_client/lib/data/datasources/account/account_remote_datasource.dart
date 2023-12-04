

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/network/base_remote_service.dart';
import 'package:go_app_client/data/api/account_api_service.dart';
import 'package:go_app_client/domain/entities/enum/account_status.dart';
import 'package:injectable/injectable.dart';

abstract class IAccountRemoteDataSource{
  Future<Either<Failure, AccountStatus>> login();
  Future<Either<Failure, bool>> registerCustomer(String fullNamne,String mobile);
  
}

@LazySingleton(as : IAccountRemoteDataSource)
class AccountRemoteDateSource with BaseRemoteService implements IAccountRemoteDataSource{
  AccountRemoteDateSource(this._accountApiService);
  final AccountApiService _accountApiService;
  
  @override
  Future<Either<Failure, AccountStatus>> login() async{
    var result = await callApi(() => _accountApiService.login());
    return result.map((r) => r.data?.status ?? AccountStatus.unknown);
  }
  
  @override
  Future<Either<Failure, bool>> registerCustomer(String fullName,String mobile) async{
    var result = await callApi(() => _accountApiService.registerCustomer(phoneNumber: mobile, fullName: fullName));
    return result.map((r){
      if(r.nonBlock == true) return true;
      return false;
    });
  }


}