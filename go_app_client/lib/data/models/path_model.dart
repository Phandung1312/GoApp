

import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/core/utils/mapper/data_mapper.dart';
import 'package:go_app_client/data/models/instruction_model.dart';
import 'package:go_app_client/domain/entities/instruction.dart';
import 'package:go_app_client/domain/entities/path_entity.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';
part 'path_model.freezed.dart';
part 'path_model.g.dart';
@freezed
class PathModel with _$PathModel implements DataMapper<PathEntity>{
  const PathModel._();
  const factory PathModel(
    num? distance,
    num? weight,
    int? time,
    int? transfers,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'points_encoded')
    bool? pointsEncoded,
    List<double>? bbox,
    String? points,
    List<InstructionModel>? instructions,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'snapped_waypoints')
    String? snappedWaypoints,
  ) = _PathModel;

   factory PathModel.fromJson(Map<String, dynamic> json ) => _$PathModelFromJson(json);
   
     @override
     PathEntity maptoEntity() {
      return PathEntity(
        distance: distance ?? 0,
      weight: weight ?? 0,
      time: time ?? 0,
      focus: bbox != null ? LatLngBounds(
            southwest: LatLng(bbox![1], bbox![0]),
            northeast: LatLng(bbox![3], bbox![2])) :  LatLngBounds(southwest: const LatLng(0, 0), northeast: const LatLng(0, 0)),
      points: points != null ? PolylinePoints().decodePolyline(points!).map((e) {
          return LatLng(e.latitude, e.longitude);
        }).toList(): <LatLng>[],
      instruction: instructions?.map<Instruction>((e) => e.maptoEntity()).toList() ?? <Instruction>[],
      );
     }
}