
import 'package:freezed_annotation/freezed_annotation.dart';
part 'filter.freezed.dart';
@freezed
class Filter with _$Filter{
  const factory Filter({
    @Default(0)
    int page,
    @Default(10)
    int size,
    String? status,
    String? sortType,
    String? sortField,
  }) = _Filter;
}