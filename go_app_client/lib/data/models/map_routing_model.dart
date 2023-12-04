
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/data/models/path_model.dart';
part 'map_routing_model.freezed.dart';
part 'map_routing_model.g.dart';
@freezed
class MapRoutingModel with _$MapRoutingModel {
  const MapRoutingModel._();
const factory MapRoutingModel(
  {
    String? license,
    String? code,
    String? messages,
    List<PathModel>? paths,
  }
) = _MapRoutingModel;
   factory MapRoutingModel.fromJson(Map<String, dynamic> json ) => _$MapRoutingModelFromJson(json);
}