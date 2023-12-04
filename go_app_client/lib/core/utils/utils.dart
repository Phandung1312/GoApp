import 'dart:io';

import 'package:go_app_client/domain/entities/enum/enum.dart';

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

  static Future<String> getDeviceIPAddress() async {
    try {
      for (NetworkInterface interface in await NetworkInterface.list()) {
        for (InternetAddress address in interface.addresses) {
          // Lọc ra địa chỉ IPv4 (IPv6 có thể được sử dụng tùy thuộc vào yêu cầu)
          if (address.type == InternetAddressType.IPv4) {
            return address.address;
          }
        }
      }
    } catch (e) {
      throw Exception('Không thể xác định địa chỉ IP: $e');
    }
    throw Exception('Không tìm thấy địa chỉ IP');
  }

  static String bookingStatusToString(BookingStatus status) {
    switch (status) {
      case BookingStatus.canceled:
        return "Đã hủy";
      case BookingStatus.done:
        return "Đã hoàn tất";

      default:
        return "";
    }
  }
}
