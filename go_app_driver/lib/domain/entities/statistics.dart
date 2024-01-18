
import 'package:freezed_annotation/freezed_annotation.dart';
part 'statistics.freezed.dart';

@freezed
class Statistics with _$Statistics{
  const factory Statistics({
    @Default(0)
    int total,
    @Default(0)
    int completed,
    @Default(0)
    int cancelled,
    @Default(0)
    num totalAmount,
    @Default(0)
    num receiveAmount,
    @Default(0)
    int cancelDriver,
    @Default(0)
    int cancelCustomer,
    @Default(0)
    int rating5,
    @Default(0)
    int rating4,
    @Default(0)
    int rating3,
    @Default(0)
    int rating2,
    @Default(0)
    int rating1,
    @Default(0)
    int rating0,
  }) = _Statistics;
}
