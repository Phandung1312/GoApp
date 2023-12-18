import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/core/inject/injection.dart';
import 'package:go_app_client/helpers/google_authen_helper.dart';
import 'package:go_app_client/helpers/share_prefereces.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    initializeLocationAndSave();
  }

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.white,
      child: Center(
        child: Image(image: AppImages.appLogo, width: 200, fit: BoxFit.cover),
      ),
    );
  }

  void initializeLocationAndSave() async {
    bool? serviceEnable;
    LocationPermission permission;

    serviceEnable = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnable) {}
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {}
    }

    // Get the current user location
    Position locationData = await Geolocator.getCurrentPosition();
    final prefs = getIt<SharedPreferences>();
    await prefs.setDouble('latitude', locationData.latitude);
    await prefs.setDouble('longitude', locationData.longitude);
    if (isLoggedIn()) {
      GoogleAuthenHelper.refreshToken();
      Future.delayed(
          const Duration(milliseconds: 100),
          () => Navigator.pushNamedAndRemoveUntil(
              context, Paths.main, (route) => false));
    } else {
      Future.delayed(
          const Duration(milliseconds: 100),
          () => Navigator.pushNamedAndRemoveUntil(
              context, Paths.login, (route) => false));
    }
  }
}
