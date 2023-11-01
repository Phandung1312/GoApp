
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

part 'map_picker_data.freezed.dart';
@freezed
class MapPickerData with _$MapPickerData{
  const factory MapPickerData({
    @Default(LatLng(0.0, 0.0)) LatLng latLng,
    String? display
  }) = _MapPickerData;
}