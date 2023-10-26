

import 'package:go_app_client/domain/entities/account.dart';

abstract class AccountRepository{
  Future<Account> getAccount();
}