import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/domain/entities/instruction.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

part 'path_entity.freezed.dart';

@freezed
class PathEntity with _$PathEntity {
  const factory PathEntity({
    @Default(0) num distance,
    @Default(0) num weight,
    @Default(0) int time,
    LatLngBounds? focus,
    @Default(<LatLng>[]) List<LatLng> points,
    @Default(<Instruction>[]) List<Instruction> instruction,
  }) = _PathEntity;
}
