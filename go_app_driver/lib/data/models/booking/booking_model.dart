
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/core/utils/mapper/data_mapper.dart';
import 'package:go_app_driver/core/utils/mapper/enum_mapper.dart';
import 'package:go_app_driver/domain/entities/booking.dart';
import 'package:go_app_driver/domain/entities/customer_info.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:go_app_driver/extensions/latlng_extension.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';
part 'booking_model.freezed.dart';
part 'booking_model.g.dart';
@freezed
class BookingModel with _$BookingModel implements DataMapper<Booking>{
  const  BookingModel._();
  const factory BookingModel({
    required int id,
    num? createAt,
    String? pickupLocation,
    String? dropOffLocation,
    @BookingStatusConverter()
    BookingStatus? status,
    int? customerId,
    double? distance,
    double? amount,
    num? predictTime,
    String? paymentMethod,
    int? driverId,
    @VehicleTypeConverter()
    VehicleType? vehicleType
  
  }) = _BookingModel;
    factory BookingModel.fromJson(Map<String, dynamic> json) => _$BookingModelFromJson(json);
    
      @override
      Booking maptoEntity() {
        return Booking(
          id: id,
          pickupLocation: pickupLocation?.toLatLng() ?? const  LatLng(0.0, 0.0),
          dropOffLocation: dropOffLocation?.toLatLng() ?? const  LatLng(0.0, 0.0),
          customerInfo: CustomerInfo(id: customerId ?? 0),
          createAt: createAt ?? 0,
          status: status ?? BookingStatus.unknown,
          distance: distance ?? 0.0,
          amount: amount ?? 0.0,
          predictTime: predictTime ?? 0,
          vehicleType:  vehicleType ?? VehicleType.MOTORCYCLE,
          paymentMethod: paymentMethod ?? "VnPay"
        );
      }

}