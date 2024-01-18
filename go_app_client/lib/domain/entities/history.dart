import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/domain/entities/driver_info.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/domain/entities/review.dart';
part 'history.freezed.dart';
@freezed
class History with _$History{
  const factory History({
    @Default(0)
    int id,
    @Default(BookingStatus.waitting)
    BookingStatus bookingStatus,
    @Default(VehicleType.motorcycle)
    VehicleType vehicleType,
    @Default("")
    String from,
    @Default('')
    String to,
    @Default(0)
    int createAt,
    @Default(0)
    int price,
    @Default("")
    String paymentMethod,
    @Default(0)
    int startTime,
     @Default(0)
    int endTime,
    @Default(0.0)
    double distance,
   @Default(DriverInfo())
    DriverInfo driverInfo,
    @Default(Review())
    Review review,
  }) = _History;
}