
import 'package:freezed_annotation/freezed_annotation.dart';
part 'instruction.freezed.dart';
@freezed
class Instruction with _$Instruction{
  const factory Instruction({
     @Default(0)
    num distance,
     @Default(0)
    num heading,
    @Default(0)
    num sign,
     @Default(<num>[])
    List<num> interval,
     @Default('')
    String text,
    @Default(0)
    num time,
     @Default('')
    String streetName,
     @Default(0)
    num lastHeading
  }) = _Instruction;
}