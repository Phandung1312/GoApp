

import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
part 'register_info.freezed.dart';
@freezed
class RegisterInfo with _$RegisterInfo{
  const factory RegisterInfo(
    {
      @Default("")
      String fullname,
      @Default(true)
      bool gender,
      DateTime? dateOfBirth,
       @Default("")
      String phoneNumber,
       @Default("")
      String idCard,
       @Default("")
      String drivingLicense,
      @Default("")
      String licensePlate,
      @Default(VehicleType.MOTORCYCLE)
      VehicleType vehicleType,
      File? avatar,
      List<File>? idCardImages,
      List<File>? drivingLicenseImages,
      

    }
  ) = _RegisterInfo;
}