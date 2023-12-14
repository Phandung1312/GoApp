


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/domain/entities/customer_info.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

part 'booking.freezed.dart';

@freezed
class Booking with _$Booking {
  const factory Booking(
    {
      @Default(0) int id,
      @Default(CustomerInfo()) CustomerInfo customerInfo,
      @Default(0) num createAt,
      @Default(LatLng(0.0, 0.0)) LatLng pickupLocation,
      @Default(LatLng(0.0, 0.0)) LatLng dropOffLocation,
      @Default("") String incomingDesAddress,
      @Default(BookingStatus.waitting) BookingStatus status,
      @Default(0.0) double amount,
      @Default(0) num predictTime,
      @Default(0.0) double distance,
      @Default(VehicleType.MOTORCYCLE) VehicleType vehicleType,
      @Default("VnPay")
      String paymentMethod,
    }
  ) = _Booking;
}