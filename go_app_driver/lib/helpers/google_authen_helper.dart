import 'package:go_app_driver/core/inject/injection.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GoogleAuthenHelper {
  static Future<void> refreshToken() async {
    final googleSignInAccount = await _googleSignIn.signInSilently();
    GoogleSignInAuthentication? googleSignInAuthentication =
        await googleSignInAccount?.authentication;

    final pref = getIt<SharedPreferences>();
    if (googleSignInAuthentication?.idToken != null) {
      await pref.setString(
          "idToken", googleSignInAuthentication?.idToken ?? "");
    }
    Logger().i("Token Refresh = ${googleSignInAuthentication?.idToken} ");
  }

  static Future<void> signOut() async {
    await _googleSignIn.signOut();
  }

  static Future<void> handleSignIn() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      GoogleSignInAuthentication? googleSignInAuthentication =
          await googleUser?.authentication;

      final pref = getIt<SharedPreferences>();
      await pref.setString(
          "idToken", googleSignInAuthentication?.idToken ?? "");
      await pref.setBool("isLoggedIn", true);
    } catch (error) {
      print(error);
    }
  }
}

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
    'https://www.googleapis.com/auth/userinfo.profile'
  ],
);
