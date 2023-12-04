

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/data/models/client_info_request.dart';
import 'package:go_app_client/domain/entities/enum/account_status.dart';

abstract class AccountRepository{
  Future<Either<Failure, AccountStatus>> login();
  Future<Either<Failure, bool>> registerCustomer(ClientInfoRequest clientInfoRequest);
}