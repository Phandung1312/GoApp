import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/core/utils/mapper/data_mapper.dart';
import 'package:go_app_driver/core/utils/mapper/enum_mapper.dart';
import 'package:go_app_driver/data/models/customer_info_model.dart';
import 'package:go_app_driver/data/models/payment/payment_model.dart';
import 'package:go_app_driver/data/models/reiview/review_model.dart';
import 'package:go_app_driver/domain/entities/booking.dart';
import 'package:go_app_driver/domain/entities/customer_info.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:go_app_driver/domain/entities/history.dart';
import 'package:go_app_driver/domain/entities/review.dart';
import 'package:go_app_driver/extensions/latlng_extension.dart';
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
      CustomerInfoModel? customer,
      double? distance,
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
        customerInfo: customer?.maptoEntity() ?? const CustomerInfo(),
        createAt: createAt ?? 0,
        status: status ?? BookingStatus.unknown,
        distance: distance ?? 0.0,
        amount: amount ?? 0.0,
        predictTime: predictTime ?? 0,
        vehicleType: vehicleType ?? VehicleType.MOTORCYCLE,
        paymentMethod: payment?.paymentMethod ?? "VnPay");
  }

  History mapToHistory() {
    return History(
      id: id,
      from: pickUpAddress ?? "",
      to: dropOffAddress ?? "",
      customerInfo: customer?.maptoEntity() ?? const CustomerInfo(),
      bookingStatus: status ?? BookingStatus.unknown,
      distance:  distance ?? 0,
      price: amount?.toInt() ?? 0,
      createAt:  createAt?.toInt() ?? 0,
      vehicleType:  vehicleType ?? VehicleType.MOTORCYCLE,
      paymentMethod: payment?.paymentMethod ?? "VnPay",
      review: review?.maptoEntity() ?? const  Review()
    );
  }
}
