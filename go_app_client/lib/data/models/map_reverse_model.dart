
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_reverse_model.freezed.dart';
part 'map_reverse_model.g.dart';

@freezed
class MapReverseModel with _$MapReverseModel{
  const factory MapReverseModel(
    // ignore: invalid_annotation_target
    @JsonKey(name: 'ref_id') String? refId,
    String? address,
    String? name,
    String? display,
    double? distance,
    double? lat,
    double? lng
  ) = _MapReverseModel;

  factory MapReverseModel.fromJson(Map<String, dynamic> json ) => _$MapReverseModelFromJson(json);
}