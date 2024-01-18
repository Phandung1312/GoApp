import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/network/base_remote_service.dart';
import 'package:go_app_client/data/api/account_api_service.dart';
import 'package:go_app_client/data/models/account_request_model.dart';
import 'package:go_app_client/data/models/client_info_model.dart';
import 'package:go_app_client/data/models/login_info_model.dart';
import 'package:go_app_client/domain/entities/client_info.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

abstract class IAccountRemoteDataSource {
  Future<Either<Failure, LoginInfoModel>> login();
  Future<Either<Failure, ClientInfoModel>> registerCustomer(
      String fullNamne, String mobile);
  Future<Either<Failure, ClientInfo>> update(
      AccountRequestModel accountRequestModel);
  Future<Either<Failure, ClientInfo>> getAccount(int id);
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
  Future<Either<Failure, ClientInfoModel>> registerCustomer(
      String fullName, String mobile) async {
    var result = await callApi(() => _accountApiService.registerCustomer(
        phoneNumber: mobile, fullName: fullName));
    return result;
  }

  @override
  Future<Either<Failure, ClientInfo>> getAccount(int id) async {
    var result = await callApi(() => _accountApiService.getAccount(id));
    return result.map((r) => r.maptoEntity());
  }

  @override
  Future<Either<Failure, ClientInfo>> update(
      AccountRequestModel accountRequestModel) async {
    var result = await callApi(() => _accountApiService.updateAccount(
        id: accountRequestModel.id,
        avatar: accountRequestModel.avatar,
        fullName: accountRequestModel.fullname,
        dateOfBirth: accountRequestModel.dateOfBirth != null
            ? DateFormat('yyyy-MM-dd').format(accountRequestModel.dateOfBirth!)
            : null,
        phoneNumber: accountRequestModel.phoneNumber,
        gender: accountRequestModel.gender));
    return result.map((r) => r.maptoEntity());
  }
}
