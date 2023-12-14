import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';

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
    @Default('')
    String createAt,
    @Default(0)
    int price,
  }) = _History;
}