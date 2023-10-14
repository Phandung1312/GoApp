

import 'package:go_app_driver/domain/entities/account.dart';
import 'package:go_app_driver/domain/repositories/account_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as : AccountRepository)
class AccountRepositoryImpl implements AccountRepository{
  @override
  Future<Account> getAccount() {
    
    throw UnimplementedError();
  }

}