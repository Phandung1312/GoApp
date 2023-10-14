import 'package:go_app_driver/domain/entities/account.dart';

abstract class AccountRepository{
  Future<Account> getAccount();
}