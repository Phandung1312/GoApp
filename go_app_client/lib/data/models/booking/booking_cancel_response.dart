


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/core/utils/mapper/enum_mapper.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
part 'booking_cancel_response.freezed.dart';
part 'booking_cancel_response.g.dart';
@freezed
class BookingCancelResponse with _$BookingCancelResponse{
  const factory BookingCancelResponse({
    required int id,
    String? reasonType,
    String? content,
    @BookingStatusConverter()
    BookingStatus? status
  }) = _BookingCancelResponse;
  factory BookingCancelResponse.fromJson(Map<String, dynamic> json) =>
      _$BookingCancelResponseFromJson(json);
}