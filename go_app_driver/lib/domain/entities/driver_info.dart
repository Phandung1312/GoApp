import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';

part 'driver_info.freezed.dart';

@freezed
class DriverInfo with _$DriverInfo {
  const factory DriverInfo({
    @Default(0) int id,
    @Default("") String fullName,
    @Default(true) bool gender,
    @Default(true) bool nonBlock,
    @Default("") String email,
    @Default("") String phoneNumber,
    @Default(DriverStatus.off) DriverStatus status,
    @Default(0) int dateOfBirth,
    @Default("") String avtUrl,
    @Default("") String idCard,
    @Default("") String licensePlate,
    @Default(0.0) double rating,
    @Default("") String drivingLicense,
    @Default(VehicleType.MOTORCYCLE) VehicleType vehicleType,
  }) = _DriverInfo;
}
