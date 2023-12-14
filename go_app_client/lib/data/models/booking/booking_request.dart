
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/core/utils/mapper/enum_mapper.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';

part 'booking_request.freezed.dart';
part 'booking_request.g.dart';

@freezed
class BookingRequest with _$BookingRequest{
  const  BookingRequest._();
  const factory BookingRequest(
    {
      @Default("")
      String pickUpLocation,
        @Default("")
      String dropOffLocation,
      @Default(VehicleType.car)
      @VehicleTypeConverter()
      VehicleType vehicleType
    }
  ) = _BookingRequest;

      factory BookingRequest.fromJson(Map<String, dynamic> json) => _$BookingRequestFromJson(json);

      @override
        Map<String, dynamic> toJson(){
        return <String, dynamic>{
            'pickUpLocation' : pickUpLocation,
            'dropOffLocation' : dropOffLocation,
            'vehicleType' : const VehicleTypeConverter().toJson(vehicleType)
        };
      }
}