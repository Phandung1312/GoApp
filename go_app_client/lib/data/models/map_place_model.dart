import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/core/utils/mapper/data_mapper.dart';
import 'package:go_app_client/domain/entities/map_place.dart';

part 'map_place_model.freezed.dart';
part 'map_place_model.g.dart';

@freezed
class MapPlaceModel  with _$MapPlaceModel implements DataMapper<MapPlace> {
  const MapPlaceModel._();
  const factory MapPlaceModel(
    String? display,
    String? name,
    @JsonKey(name:"hs_num")
    String? hsNum,
    String? street,
    @JsonKey(name: "city_id")
    int? cityId,
    String? city,
    @JsonKey(name: "district_id")
    int? districtId,
    String? district,
    @JsonKey(name: "ward_id")
    int? wardId,
    String? ward,
    double? lat,
    double? lng

  ) = _MapPlaceModel;
  
  factory MapPlaceModel.fromJson(Map<String,dynamic> json) =>_$MapPlaceModelFromJson(json);

   String getAddress() {
    var data = [hsNum, street, ward, district, city];
    return data
        .where((element) => element != null && element.isNotEmpty)
        .join(', ');
  }
  
  @override
  MapPlace maptoEntity() {
    return MapPlace(
      display: display ?? "",
      name:  name ?? "",
      hsNum: hsNum ?? "",
      street: street ?? "",
      cityId: cityId ?? 0,
      city: city ?? "",
      districtId: districtId ?? 0,
      district : district ?? "",
      wardId: wardId ?? 0,
      ward:  ward ?? "",
      lat: lat ?? 0.0,
      lng: lng ?? 0.0
    );
  }
  

}