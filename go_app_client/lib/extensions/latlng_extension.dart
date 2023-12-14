import 'package:geolocator/geolocator.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

extension LatLngExtension on LatLng {
  String toUrlValue() {
    return '$latitude,$longitude';
  }
}

extension LatLngBoundsExtension on Position {
  LatLng toLatLng() {
    return LatLng(latitude, longitude);
  }
}


extension StringExtension on String{
  LatLng toLatLng(){
    return LatLng(double.parse(split(",")[0]), double.parse(split(",")[1]));
  }
}


