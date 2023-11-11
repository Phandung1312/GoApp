import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/data/datasources/account/account_remote_datasource.dart';
import 'package:go_app_client/domain/entities/account.dart';
import 'package:go_app_client/domain/repositories/account_repository.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: AccountRepository)
class AccountRepositoryImpl implements AccountRepository {
  AccountRepositoryImpl(this._remoteDataSource);
  final IAccountRemoteDataSource _remoteDataSource;
  @override
  Future<Either<Failure, Account>> getAccount() async {
    await _handleSignIn();
    return const Right(Account());
  }

  Future<void> _handleSignIn() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      GoogleSignInAuthentication? googleSignInAuthentication =
          await googleUser?.authentication;
      var logger = Logger();

      logger.d(googleSignInAuthentication?.idToken);
      logger.d(googleSignInAuthentication?.accessToken);
      print("s");
    } catch (error) {
      print(error);
    }
  }
}

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'openid',
    'https://www.googleapis.com/auth/contacts.readonly',
    'https://www.googleapis.com/auth/userinfo.profile',
    'openid',
  ],
);
