

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/core/utils/mapper/data_mapper.dart';
import 'package:go_app_client/data/models/instruction_model.dart';
import 'package:go_app_client/domain/entities/instruction.dart';
import 'package:go_app_client/domain/entities/path.dart';
part 'path_model.freezed.dart';
part 'path_model.g.dart';
@freezed
class PathModel with _$PathModel implements DataMapper<Path>{
  const PathModel._();
  const factory PathModel(
    num? distance,
    num? weight,
    int? time,
    int? transfers,
    @JsonKey(name: 'points_encoded')
    bool? pointsEncoded,
    List<num>? bbox,
    String? points,
    List<InstructionModel>? instructions,
    @JsonKey(name: 'snapped_waypoints')
    String? snappedWaypoints,
  ) = _PathModel;

   factory PathModel.fromJson(Map<String, dynamic> json ) => _$PathModelFromJson(json);
   
     @override
     Path maptoEntity() {
      return Path(
        distance: distance ?? 0,
      weight: weight ?? 0,
      time: time ?? 0,
      transfers: transfers ?? 0,
      pointsEncoded: pointsEncoded ?? false,
      bbox: bbox ?? <num>[],
      points: points ?? "",
      instruction: instructions?.map<Instruction>((e) => e.maptoEntity()).toList() ?? <Instruction>[],
      snappedWaypoints: snappedWaypoints ?? ""
      );
     }
}