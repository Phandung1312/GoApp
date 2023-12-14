import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/core/utils/mapper/enum_mapper.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';

part 'booking_status_request_model.freezed.dart';
part 'booking_status_request_model.g.dart';
@freezed
class BookingStatusRequestModel with _$BookingStatusRequestModel{
  const factory BookingStatusRequestModel({
    @Default(0)
    int uid,
    @Default(0)
    int bookingId,
    @Default(BookingStatus.unknown)
    @BookingStatusConverter()
    BookingStatus bookingStatus,
  }) = _BookingStatusRequestModel;
  factory BookingStatusRequestModel.fromJson(Map<String, dynamic> json) => _$BookingStatusRequestModelFromJson(json);
}