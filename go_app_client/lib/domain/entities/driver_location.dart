
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';
part 'driver_location.freezed.dart';
@freezed
class DriverLocation with _$DriverLocation{
  const factory DriverLocation({
    @Default(LatLng(0, 0))
    LatLng location,
    @Default(<LatLng>[])
    List<LatLng> route,
    @Default(0.0)
    double bearing,
  }) = _DriverLocation;
}