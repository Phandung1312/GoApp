
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/core/utils/mapper/enum_mapper.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
part 'booking_status_model.freezed.dart';
part 'booking_status_model.g.dart';
@freezed
class BookingStatusModel with _$BookingStatusModel{
  const  BookingStatusModel._();
  const factory BookingStatusModel({
    @JsonKey(name: 'bookingId')
    required int id,
    @JsonKey(name: 'status')
    @BookingStatusConverter()
    @Default(BookingStatus.unknown)
    BookingStatus status
  }) = _BookingStatusModel;
  factory BookingStatusModel.fromJson(Map<String, dynamic> json) => _$BookingStatusModelFromJson(json);
}