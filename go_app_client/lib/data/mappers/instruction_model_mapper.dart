import 'package:go_app_client/data/mappers/base_model_mapper.dart';
import 'package:go_app_client/data/models/instruction_model.dart';
import 'package:go_app_client/domain/entities/instruction.dart';
import 'package:injectable/injectable.dart';

@injectable
class InstructionModelMapper extends BaseModelMapper<InstructionModel, Instruction>{
  @override
  Instruction maptoEntity(InstructionModel? model) {
    return Instruction(
      distance: model?.distance ?? 0,
      heading: model?.heading ?? 0,
      sign: model?.sign ?? 0,
      interval: model?.interval ?? <num>[],
      text: model?.text ?? "",
      time: model?.time ?? 0,
      streetName: model?.streetName ?? "",
      lastHeading: model?.lastHeading ?? 0
    );
  }
  List<Instruction> mapToListEntity(List<InstructionModel>? models){
    return models?.map<Instruction>((e) => maptoEntity(e)).toList() ?? <Instruction>[];
  }

}