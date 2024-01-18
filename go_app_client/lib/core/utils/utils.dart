import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/domain/entities/review_template.dart';
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
      case BookingStatus.cancelled:
        return "Đã hủy";
      case BookingStatus.complete:
        return "Đã hoàn tất";
      case BookingStatus.wattingRefund:
        return "Đang chờ hoàn tiền";
      case BookingStatus.refunded:
        return "Đã hoàn tiền";
      default:
        return "Không xác định";
    }
  }

  static String fromTimeStamp(
      {required int timeStamp, String format = "dd/MM/yyyy"}) {
    final time = DateTime.fromMillisecondsSinceEpoch(timeStamp);
    return DateFormat(format).format(time);
  }

  static String reviewDescription(double rating) {
    if (rating < 1) return "Rất tệ";
    if (rating < 2) return "Tệ";
    if (rating < 3) return "Trung bình";
    if (rating < 4) return "Khá ổn";
    if (rating < 5) return "Khá hoàn hảo";

    return "Hoàn hảo";
  }

  static List<ReviewTemplate> getReviewTemplates() {
    return <ReviewTemplate>[
      const ReviewTemplate(
          image: AppImages.icFamous, content: "Tài xế thân thiện"),
      const ReviewTemplate(
          image: AppImages.icTrophy, content: "Dịch vụ hoàn hảo"),
      const ReviewTemplate(
          image: AppImages.icCompassReview, content: "Tài xế tìm đường giỏi"),
      const ReviewTemplate(
          image: AppImages.icClean, content: "Tài xế gọn gàng ,sạch sẽ"),
    ];
  }

  static double textHeight(String text, double width,
      {required TextStyle style}) {
    final span = TextSpan(text: text, style: style);
    final tp = TextPainter(text: span, textDirection: ui.TextDirection.ltr);
    tp.layout(maxWidth: width);
    final numLines = tp.computeLineMetrics().length;
    return numLines * tp.size.height;
  }
}
