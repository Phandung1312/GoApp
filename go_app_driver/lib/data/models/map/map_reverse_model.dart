import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/core/utils/mapper/data_mapper.dart';
import 'package:go_app_driver/domain/entities/map_reverse.dart';

part 'map_reverse_model.freezed.dart';
part 'map_reverse_model.g.dart';

@freezed
class MapReverseModel with _$MapReverseModel implements DataMapper<MapReverse>{
  const MapReverseModel._();
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
  
  @override
  MapReverse maptoEntity() {
    return MapReverse(
      refId: refId ?? "",
        address: address ?? "",
        name: name ?? "",
        display: display ?? "",
        lat: lat ?? 0.0,
        lng: lng ?? 0.0
    );
  }
}