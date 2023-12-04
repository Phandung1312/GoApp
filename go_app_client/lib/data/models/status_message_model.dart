
import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_message_model.freezed.dart';
part 'status_message_model.g.dart';
@freezed
class StatusMessageModel with _$StatusMessageModel{
  const factory StatusMessageModel(
    String? message
  ) = _StatusMessageModel ;

    factory StatusMessageModel.fromJson(Map<String, dynamic> json ) => _$StatusMessageModelFromJson(json);
}