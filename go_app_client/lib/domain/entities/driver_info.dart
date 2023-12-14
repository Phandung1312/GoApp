import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
part 'driver_info.freezed.dart';

@freezed
class DriverInfo with _$DriverInfo {
  const factory DriverInfo({
    @Default(0) int id,
    @Default("") String fulllName,
    @Default("") String phoneNumber,
    @Default("") String dateOfBirth,
    @Default("") String avtUrl,
    @Default("") String licensePlate,
    @Default(0.0) double rating,
    @Default(VehicleType.motorcycle) VehicleType vehicleType,
    @Default(true) bool gender,
  }) = _DriverInfo;
}
