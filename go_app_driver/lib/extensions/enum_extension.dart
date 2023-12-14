

import 'package:go_app_driver/domain/entities/enum/enum.dart';

extension VehicleTypeExtension on VehicleType{
  String toName(){
    switch(this){
      case VehicleType.MOTORCYCLE:
      return "XE MÁY";
    
      case VehicleType.CAR:
      return "XE Ô TÔ";
      default: return "Xe máy";
    }
  }
}

extension BookingStatusExtension on BookingStatus{
  String toName(){
    switch(this){
      case BookingStatus.found:
      return "ĐÓN KHÁCH";
    
      case BookingStatus.onRide:
      return "ĐẾN ĐÍCH";
      case BookingStatus.complete:
      return "ĐÃ HOÀN THÀNH";
      default: return "ĐÓN KHÁCH";
    }
  }

  BookingStatus nextStatus(){
    switch(this){
      case BookingStatus.found:
      return BookingStatus.onRide;
      case BookingStatus.onRide:
      return BookingStatus.complete;

      default : return BookingStatus.unknown;
    }
  }

  String statusToDriverAction(){
    switch(this){
      case BookingStatus.found:
      return "Đã đón khách";
      case BookingStatus.onRide:
      return "Đã đến đích";
      case BookingStatus.complete:
      return "Hoàn tất";
      default : return "";
    }
  }
}


extension BoolExtension on bool{
  String boolToGenderString(){
    if(this) return "Nam";
    return "Nữ";
  }
}