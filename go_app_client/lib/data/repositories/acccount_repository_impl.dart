


import 'package:go_app_client/data/datasources/account/account_remote_datasource.dart';
import 'package:go_app_client/domain/entities/account.dart';
import 'package:go_app_client/domain/repositories/account_repository.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as : AccountRepository)
class AccountRepositoryImpl implements AccountRepository{
  AccountRepositoryImpl(this._remoteDataSource);
  final IAccountRemoteDataSource _remoteDataSource;
  @override
  Future<Account> getAccount() async {
    await _handleSignIn();
    return const Account(
    );
  }

  Future<void> _handleSignIn() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      GoogleSignInAuthentication? googleSignInAuthentication = await googleUser?.authentication;
      print(googleSignInAuthentication?.accessToken ?? "");
    } catch (error) {
      print(error);
    }
  }
}
  GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
     'https://www.googleapis.com/auth/userinfo.profile',
     'openid',
  ],
);