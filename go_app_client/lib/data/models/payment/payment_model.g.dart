// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentModelImpl _$$PaymentModelImplFromJson(Map<String, dynamic> json) =>
    _$PaymentModelImpl(
      id: json['id'] as int,
      amount: json['amount'] as num?,
      createAt: json['createAt'] as int?,
      paymentMethod: json['paymentMethod'] as String?,
    );

Map<String, dynamic> _$$PaymentModelImplToJson(_$PaymentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'createAt': instance.createAt,
      'paymentMethod': instance.paymentMethod,
    };
