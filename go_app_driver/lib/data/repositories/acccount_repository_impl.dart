import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/inject/injection.dart';
import 'package:go_app_driver/core/network/network_info.dart';
import 'package:go_app_driver/data/datasources/account/account_remote_datasource.dart';
import 'package:go_app_driver/data/models/driver_info_model.dart';
import 'package:go_app_driver/domain/entities/driver_info.dart';
import 'package:go_app_driver/domain/entities/enum/account_status.dart';
import 'package:go_app_driver/domain/entities/register_info.dart';
import 'package:go_app_driver/domain/repositories/account_repository.dart';
import 'package:go_app_driver/helpers/google_authen_helper.dart';
import 'package:go_app_driver/helpers/share_prefereces.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: AccountRepository)
class AccountRepositoryImpl implements AccountRepository {
  AccountRepositoryImpl(this._networkInfo, this._remoteDataSource, this._prefs);
  final NetworkInfo _networkInfo;
  final IAccountRemoteDataSource _remoteDataSource;
  final SharedPreferences _prefs;
  @override
  Future<Either<Failure, AccountStatus>> login() async {
    await GoogleAuthenHelper.handleSignIn();
    var result = await _remoteDataSource.login();
    return await result.fold((l) => Left(l), (r) async {
      if (r.data?.role == "CUSTOMER") {
        await GoogleAuthenHelper.signOut();
        return result.map((r) => AccountStatus.blockRole);
      }
      var idUser = r.data?.id ?? 0;
      await _prefs.setInt('idUser', idUser);
      return result.map((r) => r.data?.status ?? AccountStatus.unknown);
    });
  }

  @override
  Future<Either<Failure, DriverInfoModel>> registerDriver(
      RegisterInfo registerInfo) async {
    if (await _networkInfo.isConnected) {
      var result = await _remoteDataSource.registerDriver(registerInfo);
      await result.fold((l) => null, (r) async {
        var idUser = r.id;
        await _prefs.setInt('idUser', idUser);
      });
      return result;
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, DriverInfo>> getAccount() async {
    if (await _networkInfo.isConnected) {
      var id = getUserId();
      var result = await _remoteDataSource.getAccount(id);
      return result.map((r) => r.maptoEntity());
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, void>> logOut() async {
     await GoogleAuthenHelper.signOut();
    final pref = getIt<SharedPreferences>();
    await pref.setBool("isLoggedIn", false);
    return const Right(null);
  }
}
