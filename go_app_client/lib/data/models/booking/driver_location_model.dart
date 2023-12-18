import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/core/utils/mapper/data_mapper.dart';
import 'package:go_app_client/domain/entities/driver_location.dart';
import 'package:go_app_client/extensions/latlng_extension.dart';
import 'package:vietmap_gl_platform_interface/vietmap_gl_platform_interface.dart';
part 'driver_location_model.freezed.dart';
part 'driver_location_model.g.dart';

@freezed
class DriverLocationModel
    with _$DriverLocationModel
    implements DataMapper<DriverLocation> {
  const DriverLocationModel._();
  const factory DriverLocationModel({
    int? driverId,
    String? location,
    String? routeEncode,
    double? bearing,
  }) = _DriverLocationModel;
  factory DriverLocationModel.fromJson(Map<String, dynamic> json) =>
      _$DriverLocationModelFromJson(json);

  @override
  DriverLocation maptoEntity() {
    return DriverLocation(
        location: location?.toLatLng() ?? const LatLng(0, 0),
        route: routeEncode != null
            ? VietmapPolylineDecoder.decodePolyline(routeEncode!)
            : <LatLng>[],
        bearing: bearing ?? 0.0);
  }
}
