import 'package:go_app_driver/domain/entities/enum/enum.dart';

extension VehicleTypeExtension on VehicleType {
  String toName() {
    switch (this) {
      case VehicleType.MOTORCYCLE:
        return "XE MÁY";

      case VehicleType.CAR:
        return "XE Ô TÔ";
      default:
        return "Xe máy";
    }
  }
}

extension BookingStatusExtension on BookingStatus {
  String toName() {
    switch (this) {
      case BookingStatus.found:
        return "ĐÓN KHÁCH";
      case BookingStatus.arrrivedPickup:
        return "ĐÓN KHÁCH";
      case BookingStatus.onRide:
        return "ĐẾN ĐÍCH";
      case BookingStatus.complete:
        return "ĐÃ HOÀN THÀNH";
      default:
        return "";
    }
  }

  BookingStatus nextStatus() {
    switch (this) {
      case BookingStatus.found:
        return BookingStatus.arrrivedPickup;
      case BookingStatus.arrrivedPickup:
        return BookingStatus.onRide;
      case BookingStatus.onRide:
        return BookingStatus.complete;

      default:
        return BookingStatus.unknown;
    }
  }

  String statusToDriverAction() {
    switch (this) {
      case BookingStatus.found:
        return "TÔI ĐÃ ĐẾN NƠI";
      case BookingStatus.arrrivedPickup:
        return "KHÁCH LÊN XE";
      case BookingStatus.onRide:
        return "KHÁCH XUỐNG XE";
      case BookingStatus.complete:
        return "HOÀN TẤT";
      default:
        return "";
    }
  }

  String toHistory() {
    switch (this) {
      case BookingStatus.complete:
        return "Đã hoàn thành";
      case BookingStatus.cancelled:
        return "Đã hủy";
      default:
        return "Đã hủy";
    }
  }
}

extension BoolExtension on bool {
  String boolToGenderString() {
    if (this) return "Nam";
    return "Nữ";
  }
}
