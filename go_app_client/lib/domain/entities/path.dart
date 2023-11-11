import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/domain/entities/instruction.dart';

part 'path.freezed.dart';

@freezed
class Path with _$Path{
  const factory Path({
    @Default(0)
    num distance,
     @Default(0)
    num weight,
     @Default(0)
    int time,
     @Default(0)
    int transfers,
    @Default(false)
    bool pointsEncoded,
    @Default(<num>[])
    List<num> bbox,
    @Default('')
    String points,
    @Default(<Instruction>[])
    List<Instruction> instruction,
    @Default('')
    String snappedWaypoints
  }) = _Path;
}