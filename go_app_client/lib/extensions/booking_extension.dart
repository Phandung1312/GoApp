import 'package:go_app_client/core/utils/mapper/enum_mapper.dart';
import 'package:go_app_client/domain/entities/booking.dart';
import 'package:logger/logger.dart';

extension BookingExtension on Booking {
  Booking changeStatusFromSocket(Map<String, dynamic> data) {
    try {
      if (id == data['bookingId'] as int) {
        var status =
            const BookingStatusConverter().fromJson(data['bookingStatus']);
        return copyWith(status: status);
      }
      Logger().e("IdBooking not match");
      return this;
    } catch (e) {
      Logger().e("Error when process status booking");
      return this;
    }
  }
}
