
import 'package:go_app_client/data/mappers/base_model_mapper.dart';
import 'package:go_app_client/data/mappers/path_model_mapper.dart';
import 'package:go_app_client/data/models/map_routing_model.dart';
import 'package:go_app_client/domain/entities/map_routing.dart';
import 'package:injectable/injectable.dart';

@injectable
class MapRoutingModelMapper extends BaseModelMapper<MapRoutingModel, MapRouting>{
  MapRoutingModelMapper(this._pathModelMapper);
  final PathModelMapper _pathModelMapper;
  @override
  MapRouting maptoEntity(MapRoutingModel? model) {
    return MapRouting(
      license:  model?.license ?? "",
      code: model?.code ?? "",
      message : model?.messages ?? "",
      paths: _pathModelMapper.mapToListEntity(model?.paths)
    );
  }
}