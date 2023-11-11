
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/domain/entities/path.dart';
part 'map_routing.freezed.dart';
@freezed
class MapRouting with _$MapRouting{
  const factory MapRouting(
{
   @Default('')
  String license,
  @Default('')
  String code,
  @Default('')
  String message,
  @Default(<Path>[])
  List<Path> paths,
}
  ) = _MapRouting;
}