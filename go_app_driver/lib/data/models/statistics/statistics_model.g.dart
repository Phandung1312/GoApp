// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticsModelImpl _$$StatisticsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StatisticsModelImpl(
      totalBookings: json['totalBookings'] as int?,
      completedCount: json['completedCount'] as int?,
      cancelledCount: json['cancelledCount'] as int?,
      totalAmount: json['totalAmount'] as num?,
      driverReceiveAmount: json['driverReceiveAmount'] as num?,
      quantityCancelByDriver: json['quantityCancelByDriver'] as int?,
      quantityCancelByCustomer: json['quantityCancelByCustomer'] as int?,
      rating5Count: json['rating5Count'] as int?,
      rating4Count: json['rating4Count'] as int?,
      rating3Count: json['rating3Count'] as int?,
      rating2Count: json['rating2Count'] as int?,
      rating1Count: json['rating1Count'] as int?,
      rating0Count: json['rating0Count'] as int?,
    );

Map<String, dynamic> _$$StatisticsModelImplToJson(
        _$StatisticsModelImpl instance) =>
    <String, dynamic>{
      'totalBookings': instance.totalBookings,
      'completedCount': instance.completedCount,
      'cancelledCount': instance.cancelledCount,
      'totalAmount': instance.totalAmount,
      'driverReceiveAmount': instance.driverReceiveAmount,
      'quantityCancelByDriver': instance.quantityCancelByDriver,
      'quantityCancelByCustomer': instance.quantityCancelByCustomer,
      'rating5Count': instance.rating5Count,
      'rating4Count': instance.rating4Count,
      'rating3Count': instance.rating3Count,
      'rating2Count': instance.rating2Count,
      'rating1Count': instance.rating1Count,
      'rating0Count': instance.rating0Count,
    };
