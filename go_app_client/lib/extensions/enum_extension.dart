import 'package:go_app_client/domain/entities/enum/enum.dart';

extension VehicleTypeExtension on VehicleType{
  String toName(){
    switch(this){
      case VehicleType.motorcycle:
      return "XE MÁY";
    
      case VehicleType.car:
      return "XE Ô TÔ";
      default: return "Xe máy";
    }
  }
}


extension BoolExtension on bool{
  String boolToGenderString(){
    if(this) return "Nam";
    return "Nữ";
  }
}

extension BookingStatusExtension on BookingStatus{
  String toDriverStatus(){
    switch(this){
      case BookingStatus.found:
      return "Tài xế đang tới";
        case BookingStatus.paid:
      return "Tài xế đang tới";
      case BookingStatus.onRide:
      return "Đang tới đích";
      default: return "";
    }
  }
}


