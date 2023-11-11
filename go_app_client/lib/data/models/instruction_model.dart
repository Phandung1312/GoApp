
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/core/utils/mapper/data_mapper.dart';
import 'package:go_app_client/domain/entities/instruction.dart';
part 'instruction_model.freezed.dart';
part 'instruction_model.g.dart';
@freezed
class InstructionModel with _$InstructionModel implements DataMapper<Instruction>{
  const InstructionModel._();
  const factory InstructionModel(
    num? distance,
    num? heading,
    num? sign,
    List<num>? interval,
    String? text,
    num? time,
    @JsonKey(name: 'street_name')
    String? streetName,
    @JsonKey(name: 'last_heading')
    num? lastHeading,
  ) = _InstructionModel;
  factory InstructionModel.fromJson(Map<String, dynamic> json ) => _$InstructionModelFromJson(json);
  
  @override
  Instruction maptoEntity() {
    return Instruction(
      distance: distance ?? 0,
      heading: heading ?? 0,
      sign: sign ?? 0,
      interval: interval ?? <num>[],
      text: text ?? "",
      time: time ?? 0,
      streetName: streetName ?? "",
      lastHeading: lastHeading ?? 0
    );
  }
}