import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
part 'history.freezed.dart';
@freezed
class History with _$History{
  const factory History({
    @Default(0)
    int id,
    @Default(BookingStatus.waitingDriver)
    BookingStatus bookingStatus,
    @Default(VehicleType.motorcycle)
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