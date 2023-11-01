

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/domain/entities/account.dart';

abstract class AccountRepository{
  Future<Either<Failure, Account>> getAccount();
}