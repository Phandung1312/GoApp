import 'package:freezed_annotation/freezed_annotation.dart';
part 'booking_cancel_request.freezed.dart';

@freezed
class BookingCancelRequest with _$BookingCancelRequest {
  const BookingCancelRequest._();
  const factory BookingCancelRequest(
      {
        @Default(0) int bookingId,
        @Default("CUSTOMER") String reasonType,
      @Default("") String content}) = _BookingCancelRequest;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'reasonType': reasonType, 'content': content};
  }
}
