
import 'package:go_app_driver/core/errors/exceptions.dart';
import 'package:go_app_driver/data/api/account_api_service.dart';
import 'package:go_app_driver/data/mappers/account_model_mapper.dart';

import 'package:go_app_driver/domain/entities/account.dart';
import 'package:injectable/injectable.dart';

abstract class IAccountRemoteDataSource{
  Future<Account> getAccount();
}

@LazySingleton(as : IAccountRemoteDataSource)
class AccountRemoteDateSource implements IAccountRemoteDataSource{
  AccountRemoteDateSource(this._accountApiService,this._accountModelMapper);
  final AccountApiService _accountApiService;
  final AccountModelMapper _accountModelMapper;
  @override
  Future<Account> getAccount() async{
    try{
      final result = await _accountApiService.login();
      return _accountModelMapper.maptoEntity(result);
    }on Exception catch (exception){
      print(exception);
      throw ServerException();
    }
  }

}