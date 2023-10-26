

import 'package:flutter/material.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/core/inject/injection.dart';
import 'package:location/location.dart';
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
      child:  Center(
        child : Image(
          image:  AppImages.appLogo,
          width: 200,
          fit: BoxFit.cover
        ),
      ),
    );
  }

  void initializeLocationAndSave() async{
    Location location = Location();
    bool? serviceEnable;
    PermissionStatus? permissionGranted;

    serviceEnable = await location.serviceEnabled();
    if(!serviceEnable){
      serviceEnable = await location.requestService();
    }
    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
    }

    // Get the current user location
    LocationData locationData = await location.getLocation();
    final prefs = getIt<SharedPreferences>();
    await prefs.setDouble('latitude', locationData.latitude!);
    await prefs.setDouble('longitude', locationData.longitude!);
    Future.delayed(
      const  Duration(seconds:  1),
      () => Navigator.pushNamedAndRemoveUntil(context, Paths.login,(route) => route.isFirst)
    );
     
  }
}