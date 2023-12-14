
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/core/utils/mapper/data_mapper.dart';
import 'package:go_app_client/core/utils/mapper/enum_mapper.dart';
import 'package:go_app_client/domain/entities/booking.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/extensions/latlng_extension.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

part 'booking_model.freezed.dart';
part 'booking_model.g.dart';
@freezed
class BookingModel with _$BookingModel implements DataMapper<Booking>{
  const  BookingModel._();
  const factory BookingModel({
    required int id,
    num? createAt,
    String? pickupLocaton,
    String? dropOffLocation,
    @BookingStatusConverter()
    BookingStatus? status,
    double? distance,
    double? amount,
    num? predictTime,
    @VehicleTypeConverter()
    VehicleType? vehicleType
  
  }) = _BookingModel;
    factory BookingModel.fromJson(Map<String, dynamic> json) => _$BookingModelFromJson(json);
    
      @override
      Booking maptoEntity() {
        return Booking(
          id: id,
          pickupLocation: pickupLocaton?.toLatLng() ?? const  LatLng(0.0, 0.0),
          dropOffLocation: dropOffLocation?.toLatLng() ?? const  LatLng(0.0, 0.0),
          status: status ?? BookingStatus.unknown,
          distance: distance ?? 0.0,
          amount: amount ?? 0.0,
          predictTime: predictTime ?? 0,
          vehicleType:  vehicleType ?? VehicleType.motorcycle
        );
      }

}