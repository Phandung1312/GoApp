import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/domain/entities/customer_info.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:go_app_driver/domain/entities/review.dart';

part 'history.freezed.dart';
@freezed
class History with _$History{
  const factory History({
    @Default(0)
    int id,
    @Default(BookingStatus.waitting)
    BookingStatus bookingStatus,
    @Default(VehicleType.MOTORCYCLE)
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
    @Default(CustomerInfo())
    CustomerInfo customerInfo,
    @Default(Review())
    Review review,
  }) = _History;
}