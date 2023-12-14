import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_reverse.freezed.dart';

@freezed
class MapReverse with _$MapReverse{
  const factory MapReverse({
      @Default("") String refId,
      @Default("") String address,
      @Default("") String name,
      @Default("") String display,
      @Default(0.0) double lat,
      @Default(0.0) double lng,
  }) = _MapReverse;
}