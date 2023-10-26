import 'package:go_app_client/core/inject/injection.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:shared_preferences/shared_preferences.dart';

LatLng getCurrentLatLngFromSharedPrefs()  {
  final prefs = getIt<SharedPreferences>();
  return LatLng(prefs.getDouble('latitude')!,
      prefs.getDouble('longitude')!);
}