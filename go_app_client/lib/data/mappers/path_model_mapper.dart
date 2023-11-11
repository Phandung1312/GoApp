import 'package:go_app_client/data/mappers/base_model_mapper.dart';
import 'package:go_app_client/data/mappers/instruction_model_mapper.dart';
import 'package:go_app_client/data/models/path_model.dart';
import 'package:go_app_client/domain/entities/path.dart';
import 'package:injectable/injectable.dart';

@injectable
class PathModelMapper extends BaseModelMapper<PathModel, Path>{
  PathModelMapper(this._instructionModelMapper);
  final InstructionModelMapper _instructionModelMapper;
  @override
  Path maptoEntity(PathModel? model) {
    return Path(
      distance: model?.distance ?? 0,
      weight: model?.weight ?? 0,
      time: model?.time ?? 0,
      transfers: model?.transfers ?? 0,
      pointsEncoded: model?.pointsEncoded ?? false,
      bbox: model?.bbox ?? <num>[],
      points: model?.points ?? "",
      instruction: _instructionModelMapper.mapToListEntity(model?.instructions),
      snappedWaypoints: model?.snappedWaypoints ?? ""
    );
  }

  List<Path> mapToListEntity(List<PathModel>? models){
    return models?.map<Path>((e) => maptoEntity(e)).toList() ?? <Path>[];
  }

}