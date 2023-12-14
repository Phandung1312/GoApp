import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:intl/intl.dart';

class Utils {
  static String formatCurrency(int number) {
    String formatted = number.toString();
    if (formatted.length <= 3) {
      return formatted;
    }

    String result = '';
    int count = 0;

    for (int i = formatted.length - 1; i >= 0; i--) {
      result = formatted[i] + result;
      count++;

      if (count == 3 && i > 0) {
        result = '.$result';
        count = 0;
      }
    }

    return result;
  }

    static String fromTimeStamp({required int timeStamp, String format = "dd/MM/yyyy"}) {
      final time = DateTime.fromMillisecondsSinceEpoch(timeStamp);
      return DateFormat(format).format(time);
    }

 

  static String bookingStatusToString(BookingStatus status) {
    switch (status) {
      case BookingStatus.cancelled:
        return "Đã hủy";
      case BookingStatus.complete:
        return "Đã hoàn tất";

      default:
        return "";
    }
  }
}
