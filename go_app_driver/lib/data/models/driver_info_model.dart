
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/core/utils/mapper/data_mapper.dart';
import 'package:go_app_driver/core/utils/mapper/enum_mapper.dart';
import 'package:go_app_driver/domain/entities/driver_info.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
part 'driver_info_model.freezed.dart';
part 'driver_info_model.g.dart';
@freezed
class DriverInfoModel with _$DriverInfoModel implements DataMapper<DriverInfo>{
  const DriverInfoModel._();
  const factory DriverInfoModel({
    required int id,
    String? fullName,
    bool? male,
    bool? nonBlock,
    String? email,
    String? phoneNumber,
    int? dateOfBirth,
    String? avtUrl,
    String? idCard,
    String? licensePlate,
    @DriverStatusConverter()
    DriverStatus? status,
    String? activityArea,
    double? rating,
    String? drivingLicense,
    @VehicleTypeConverter()
    VehicleType? vehicleType,
    @JsonKey(name: "drivingLicenseImg1")
    String? fontDrivingLicenseImg,
    @JsonKey(name: "drivingLicenseImg2")
    String? behindDrivingLicenseImg,
    @JsonKey(name: "cardId1")
    String? fontCardIdImg,
    @JsonKey(name: "cardId2")
    String? behindCardIdImg,
  }) = _DriverInfoModel ;
  factory DriverInfoModel.fromJson(Map<String, dynamic> json) => _$DriverInfoModelFromJson(json);
  
  @override
  DriverInfo maptoEntity() {
    return DriverInfo(
      id : id,
      fullName: fullName ?? "",
      gender: male ?? true,
      nonBlock: nonBlock ?? true,
      email: email ?? "",
      phoneNumber: phoneNumber ?? "",
      dateOfBirth: dateOfBirth ?? 0,
      avtUrl: avtUrl ?? "",
      idCard: idCard ?? "",
      licensePlate: licensePlate ?? "",
      status: status ?? DriverStatus.off,
      rating: rating ?? 0.0,
      drivingLicense: drivingLicense ?? "",
      vehicleType: vehicleType ?? VehicleType.MOTORCYCLE
    );
  }
}