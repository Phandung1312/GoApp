import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_place.freezed.dart';

@freezed
class MapPlace with _$MapPlace {
  const factory MapPlace(
      {@Default("") String display,
      @Default("") String name,
      @Default("") String hsNum,
      @Default("") String street,
      @Default(0) int cityId,
      @Default("") String city,
      @Default(0) int districtId,
      @Default("") String district,
      @Default(0) int wardId,
      @Default("") String ward,
      @Default(0.0) double lat,
      @Default(0.0) double lng}) = _MapPlacce;
}
