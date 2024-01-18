
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pagination_model.freezed.dart';
part 'pagination_model.g.dart';
@freezed
class PaginationModel with _$PaginationModel{
  const factory PaginationModel({
     required int page,
     required List<Map<String, dynamic>> content,

  }) = _PanigationModel;
   factory PaginationModel.fromJson(Map<String, dynamic> json) => _$PaginationModelFromJson(json);
}