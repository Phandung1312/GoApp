import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/inject/injection.dart';
import 'package:go_app_client/core/network/network_info.dart';
import 'package:go_app_client/data/datasources/account/account_remote_datasource.dart';
import 'package:go_app_client/data/models/client_info_request.dart';
import 'package:go_app_client/domain/entities/enum/account_status.dart';
import 'package:go_app_client/domain/repositories/account_repository.dart';
import 'package:google_sign_in/google_sign_in.dart';
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
    await _handleSignIn();
    var result = await _remoteDataSource.login();
    await result.fold((l) => null, (r) async {
      var idUser = r.data?.id ?? 0;
      await _prefs.setInt('idUser', idUser);
    });
    return result.map((r) => r.data?.status ?? AccountStatus.unknown);
  }

  Future<void> _handleSignIn() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      GoogleSignInAuthentication? googleSignInAuthentication =
          await googleUser?.authentication;
      final pref = getIt<SharedPreferences>();
      await pref.setString(
          "idToken", googleSignInAuthentication?.idToken ?? "");
    } catch (error) {
      print(error);
    }
  }

  @override
  Future<Either<Failure, bool>> registerCustomer(
      ClientInfoRequest clientInfoRequest) async {
    if (await _networkInfo.isConnected) {
      final result = await _remoteDataSource.registerCustomer(
          clientInfoRequest.fullName, clientInfoRequest.phoneNumber);
      await result.fold((l) => null, (r) async {
        var idUser = r.id;
        await _prefs.setInt('idUser', idUser);
      });
      return result.map((r) {
        if (r.nonBlock == true) return true;
        return false;
      });
    } else {
      return Left(NetworkFailure());
    }
  }
}

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
    'https://www.googleapis.com/auth/userinfo.profile',
  ],
);
