import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';

@freezed
class Booking with _$Booking {
  const factory Booking(
    {
      @Default(0) int id,
    }
  ) = _Booking;
}
