import 'package:go_app_client/data/mappers/base_model_mapper.dart';
import 'package:go_app_client/data/models/map_reverse_model.dart';
import 'package:go_app_client/domain/entities/map_reverse.dart';
import 'package:injectable/injectable.dart';

@injectable
class MapReverseMapper extends BaseModelMapper<MapReverseModel, MapReverse> {
  @override
  MapReverse maptoEntity(MapReverseModel? model) {
    return MapReverse(
        address: model?.address ?? "",
        name: model?.name ?? "",
        display: model?.display ?? "",
        lat: model?.lat ?? 0.0,
        lng: model?.lng ?? 0.0
        );
  }
}
