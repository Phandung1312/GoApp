
import 'package:freezed_annotation/freezed_annotation.dart';
part 'map_autocomplete.freezed.dart';
@freezed
class MapAutoComplete with _$MapAutoComplete{
  const factory MapAutoComplete(
    {
      @Default("") String refId,
      @Default("") String address,
      @Default("") String name,
      @Default("") String display,
    }
  ) = _MapAutoComplete;
}