import 'package:go_app_client/core/inject/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

LatLng getCurrentLatLngFromSharedPrefs()  {
  final prefs = getIt<SharedPreferences>();
  return LatLng(prefs.getDouble('latitude')!,
      prefs.getDouble('longitude')!);
}