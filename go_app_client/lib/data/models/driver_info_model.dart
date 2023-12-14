
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/core/utils/mapper/data_mapper.dart';
import 'package:go_app_client/core/utils/mapper/enum_mapper.dart';
import 'package:go_app_client/core/utils/utils.dart';
import 'package:go_app_client/domain/entities/driver_info.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
part 'driver_info_model.freezed.dart';
part 'driver_info_model.g.dart';
@freezed
class DriverInfoModel with _$DriverInfoModel implements DataMapper<DriverInfo>{
  const DriverInfoModel._();
  const factory DriverInfoModel({
    required int id,
    String? fullName,
    String? email,
    String? phoneNumber,
    num? dateOfBirth,
    String? avtUrl,
    String? licensePlate,
    double? rating,
    @VehicleTypeConverter()
    VehicleType? vehicleType,
    bool? gender,

  }) = _DriverInfoModel;
  factory DriverInfoModel.fromJson(Map<String, dynamic> json) => _$DriverInfoModelFromJson(json);
  
  @override
  DriverInfo maptoEntity() {
    return DriverInfo(
      id:  id,
      fulllName: fullName ?? "",
      phoneNumber: phoneNumber ?? "",
      dateOfBirth: dateOfBirth != null ? Utils.fromTimeStamp(timeStamp: dateOfBirth!.toInt()) : "",
      avtUrl:  avtUrl ?? "",
      licensePlate: licensePlate ?? "",
      rating:  rating ?? 0.0,
      vehicleType: vehicleType ?? VehicleType.motorcycle,
      gender: gender ?? true,
    );
  }
}