import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

part 'booking.freezed.dart';

@freezed
class Booking with _$Booking {
  const factory Booking({
    @Default(0) int id,
    @Default(0) num createAt,
    @Default(LatLng(0.0, 0.0)) LatLng pickUpLocation,
    @Default("") String pickUpAddress,
    @Default(LatLng(0.0, 0.0)) LatLng dropOffLocation,
    @Default("") String dropOffAddress,
    @Default(BookingStatus.waitting) BookingStatus status,
    @Default(0.0) double amount,
    @Default(0) num predictTime,
    @Default(0.0) double distance,
    @Default(0) int driverId,
    @Default(VehicleType.motorcycle) VehicleType vehicleType,
    @Default("VnPay") String paymentMethod,
  }) = _Booking;
}
