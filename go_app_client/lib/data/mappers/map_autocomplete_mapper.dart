

import 'package:go_app_client/data/mappers/base_model_mapper.dart';
import 'package:go_app_client/data/models/map_autocomplete_model.dart';
import 'package:go_app_client/domain/entities/map_autocomplete.dart';
import 'package:injectable/injectable.dart';

@injectable 
class MapAutoCompleteMapper extends BaseModelMapper<MapAutoCompleteModel, MapAutoComplete>{
  @override
  MapAutoComplete maptoEntity(MapAutoCompleteModel? model) {
    return MapAutoComplete(
        address: model?.address ?? "",
        name:  model?.name ?? "",
        display: model?.display ?? ""
    );
  }

  List<MapAutoComplete> mapToListEntity(List<MapAutoCompleteModel> models){
    return models.map<MapAutoComplete>((e) => maptoEntity(e)).toList();
  }

}