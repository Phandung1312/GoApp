
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/core/utils/mapper/data_mapper.dart';
import 'package:go_app_client/data/models/path_model.dart';
import 'package:go_app_client/domain/entities/map_routing.dart';
import 'package:go_app_client/domain/entities/path.dart';
part 'map_routing_model.freezed.dart';
part 'map_routing_model.g.dart';
@freezed
class MapRoutingModel with _$MapRoutingModel implements DataMapper<MapRouting>{
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
   
     @override
     MapRouting maptoEntity() {
      return MapRouting(
        license:  license ?? "",
      code: code ?? "",
      message : messages ?? "",
      paths: paths?.map<Path>((e) => e.maptoEntity()).toList() ?? <Path>[],
      );
     }
}