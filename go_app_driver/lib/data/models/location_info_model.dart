
import 'package:freezed_annotation/freezed_annotation.dart';
part 'location_info_model.freezed.dart';
@freezed
class LocationInfoModel with _$LocationInfoModel{
  const LocationInfoModel._();
  const factory LocationInfoModel({
    required int idUser,
    required String location,
    String? routeEncode,
    double? bearing,
  }) = _LocationInfoModel;

   Map<String, dynamic> toJson(){
        return <String, dynamic>{
            'driverId' : idUser,
            'location' : location,
            'routeEncode' : routeEncode,
            'bearing' : bearing
        };
      }
}