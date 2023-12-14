// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingPriceModelImpl _$$BookingPriceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingPriceModelImpl(
      pickUpLocation: json['pickUpLocation'] as String?,
      desLocation: json['dropOffLocation'] as String?,
      amounts: json['amounts'] == null
          ? null
          : AmountModel.fromJson(json['amounts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookingPriceModelImplToJson(
        _$BookingPriceModelImpl instance) =>
    <String, dynamic>{
      'pickUpLocation': instance.pickUpLocation,
      'dropOffLocation': instance.desLocation,
      'amounts': instance.amounts,
    };

_$AmountModelImpl _$$AmountModelImplFromJson(Map<String, dynamic> json) =>
    _$AmountModelImpl(
      motorPrice: json['1'] as num?,
      carPrice: json['2'] as num?,
    );

Map<String, dynamic> _$$AmountModelImplToJson(_$AmountModelImpl instance) =>
    <String, dynamic>{
      '1': instance.motorPrice,
      '2': instance.carPrice,
    };
