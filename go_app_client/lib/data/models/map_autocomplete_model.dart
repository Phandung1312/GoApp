
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_autocomplete_model.freezed.dart';
part 'map_autocomplete_model.g.dart';

@freezed
class MapAutoCompleteModel with _$MapAutoCompleteModel{
  const factory MapAutoCompleteModel(
    // ignore: invalid_annotation_target
    @JsonKey(name: 'ref_id') String? refId,
    String? address,
    String? name,
    String? display,
  ) = _MapAutoCompleteModel;
  
  factory MapAutoCompleteModel.fromJson(Map<String, dynamic> json ) => _$MapAutoCompleteModelFromJson(json);
}