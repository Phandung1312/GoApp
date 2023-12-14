
import 'package:go_app_driver/core/inject/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

LatLng getCurrentLatLngFromSharedPrefs()  {
  final prefs = getIt<SharedPreferences>();
  return LatLng(prefs.getDouble('latitude')!,
      prefs.getDouble('longitude')!);
}

String getIdToken(){
   final prefs = getIt<SharedPreferences>();
   return "${prefs.getString('idToken')}";
}


int getUserId(){
   final prefs = getIt<SharedPreferences>();
   return prefs.getInt('idUser') ?? 0;
}