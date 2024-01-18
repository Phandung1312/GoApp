
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/core/utils/mapper/data_mapper.dart';
import 'package:go_app_driver/domain/entities/statistics.dart';
part 'statistics_model.freezed.dart';
part 'statistics_model.g.dart';
@freezed
class StatisticsModel with _$StatisticsModel implements DataMapper<Statistics>{
  const StatisticsModel._();
  const factory StatisticsModel({
    int? totalBookings,
    int? completedCount,
    int? cancelledCount,
    num? totalAmount,
    num? driverReceiveAmount,
    int? quantityCancelByDriver,
    int? quantityCancelByCustomer,
    int? rating5Count,
    int? rating4Count,
    int? rating3Count,
    int? rating2Count,
    int? rating1Count,
    int? rating0Count,
  }) = _StatisticsModel;
  factory StatisticsModel.fromJson(Map<String, dynamic> json) => _$StatisticsModelFromJson(json);
  
  @override
  Statistics maptoEntity() {
    return Statistics(
      total: totalBookings ?? 0,
      completed: completedCount ?? 0,
      cancelled: cancelledCount ?? 0, 
      totalAmount: totalAmount?.toInt() ?? 0,
      receiveAmount: driverReceiveAmount?.toInt() ?? 0, 
      cancelDriver: quantityCancelByDriver ?? 0,
      cancelCustomer: quantityCancelByCustomer ?? 0,
      rating5: rating5Count ?? 0,  
      rating4: rating4Count ?? 0,  
      rating3: rating3Count ?? 0,  
      rating2: rating2Count ?? 0,  
      rating1: rating1Count ?? 0,  
      rating0: rating0Count ?? 0,  
    );
  }
}