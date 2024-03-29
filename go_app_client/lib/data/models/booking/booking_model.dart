import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/core/utils/mapper/data_mapper.dart';
import 'package:go_app_client/core/utils/mapper/enum_mapper.dart';
import 'package:go_app_client/data/models/driver_info_model.dart';
import 'package:go_app_client/data/models/history/review_model.dart';
import 'package:go_app_client/data/models/payment/payment_model.dart';
import 'package:go_app_client/domain/entities/booking.dart';
import 'package:go_app_client/domain/entities/driver_info.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/domain/entities/history.dart';
import 'package:go_app_client/domain/entities/review.dart';
import 'package:go_app_client/extensions/latlng_extension.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

part 'booking_model.freezed.dart';
part 'booking_model.g.dart';

@freezed
class BookingModel with _$BookingModel implements DataMapper<Booking> {
  const BookingModel._();
  const factory BookingModel(
      {required int id,
      num? createAt,
      String? pickUpLocation,
      String? pickUpAddress,
      String? dropOffLocation,
      String? dropOffAddress,
      @BookingStatusConverter() BookingStatus? status,
      double? distance,
      DriverInfoModel? driver,
      double? amount,
      num? predictTime,
      PaymentModel? payment,
      ReviewModel? review,
      num? startTime,
      num? endTime,
      @VehicleTypeConverter() VehicleType? vehicleType}) = _BookingModel;
  factory BookingModel.fromJson(Map<String, dynamic> json) =>
      _$BookingModelFromJson(json);

  @override
  Booking maptoEntity() {
    return Booking(
        id: id,
        pickUpLocation: pickUpLocation?.toLatLng() ?? const LatLng(0.0, 0.0),
        pickUpAddress: pickUpAddress ?? "",
        dropOffLocation: dropOffLocation?.toLatLng() ?? const LatLng(0.0, 0.0),
        dropOffAddress: dropOffAddress ?? "",
        status: status ?? BookingStatus.unknown,
        distance: distance ?? 0.0,
        amount: amount ?? 0.0,
        driver: driver?.maptoEntity() ?? const  DriverInfo(),
        predictTime: predictTime ?? 0,
        vehicleType: vehicleType ?? VehicleType.motorcycle,
        paymentMethod: payment?.paymentMethod ?? "VnPay");
  }

  History mapToHistory() {
    return History(
      id: id,
      from: pickUpAddress ?? "",
      to: dropOffAddress ?? "",
      driverInfo: driver?.maptoEntity() ?? const DriverInfo(),
      bookingStatus: status ?? BookingStatus.unknown,
      distance:  distance ?? 0,
      price: amount?.toInt() ?? 0,
      createAt:  createAt?.toInt() ?? 0,
      vehicleType:  vehicleType ?? VehicleType.motorcycle,
      paymentMethod: payment?.paymentMethod ?? "VnPay",
      review: review?.maptoEntity() ?? const  Review()
    );
  }
}
