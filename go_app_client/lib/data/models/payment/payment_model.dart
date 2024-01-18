

import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_model.freezed.dart';
part 'payment_model.g.dart';
@freezed
class PaymentModel with _$PaymentModel{
  const factory PaymentModel({
    required int id,
    num? amount,
    int? createAt,
    String? paymentMethod
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) => _$PaymentModelFromJson(json);
}