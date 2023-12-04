
import 'package:freezed_annotation/freezed_annotation.dart';
part 'booking_price_model.freezed.dart';
part 'booking_price_model.g.dart';

@freezed
class BookingPriceModel with _$BookingPriceModel{
  const factory BookingPriceModel(
    {
      String? pickUpLocation,
      @JsonKey(name: 'dropOffLocation')
      String? desLocation,
      AmountModel? amounts,
    }
  ) = _BookingPriceModel ;
  factory BookingPriceModel.fromJson(Map<String, dynamic> json) => _$BookingPriceModelFromJson(json);

}

@freezed
class AmountModel with _$AmountModel{
  const factory AmountModel(
    {
      @JsonKey(name: '1')
      num? motorPrice,
      @JsonKey(name: '2')
      num? carPrice,
    }
  ) = _AmountModel ;

  factory AmountModel.fromJson(Map<String, dynamic> json) => _$AmountModelFromJson(json);
}