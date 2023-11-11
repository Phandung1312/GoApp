import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

part 'map_routing_params.freezed.dart';

@freezed
class MapRoutingParams with _$MapRoutingParams {
  const factory MapRoutingParams({
    LatLng? pickupLocation,
    String? pickupDescription,
    LatLng? destinationLocation,
    String? destinationDescription,
    @Default(VehicleType.motorcycle)
    VehicleType vehicleType,
  }) = _MapRoutingPrams;
}
