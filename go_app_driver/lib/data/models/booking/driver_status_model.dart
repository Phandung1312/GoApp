


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/core/utils/mapper/enum_mapper.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
part 'driver_status_model.freezed.dart';
part 'driver_status_model.g.dart';
@freezed
class DriverStatusModel with _$DriverStatusModel{
  const factory DriverStatusModel({
    int? driverId,
    @DriverStatusConverter()
    DriverStatus? driverStatus,
  }) = _DriverStatusModel;

   factory DriverStatusModel.fromJson(Map<String, dynamic> json) => _$DriverStatusModelFromJson(json);
}