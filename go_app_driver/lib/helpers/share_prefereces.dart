import 'package:go_app_driver/core/inject/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

LatLng getCurrentLatLngFromSharedPrefs() {
  final prefs = getIt<SharedPreferences>();
  return LatLng(prefs.getDouble('latitude')!, prefs.getDouble('longitude')!);
}

String getIdToken() {
  final prefs = getIt<SharedPreferences>();
  return "${prefs.getString('idToken')}";
}

int getUserId() {
  final prefs = getIt<SharedPreferences>();
  return prefs.getInt('idUser') ?? 0;
}

bool isLoggedIn() {
   final prefs = getIt<SharedPreferences>();
   return prefs.getBool('isLoggedIn') ?? false;
}

class SharePreferencesHelper {
  static void saveRoute(String geometry) async {
    final prefs = getIt<SharedPreferences>();
    await prefs.setString('geometric', geometry);
  }

  static String? getRoute() {
     final prefs = getIt<SharedPreferences>();
     return prefs.getString('geometric');
  }
}
