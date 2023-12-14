

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/data/models/chat/message_model.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';
@freezed
class ChatModel with _$ChatModel{
  const factory ChatModel({
    required int id,
    required int bookingId,
    List<MessageModel>? messageResponses,
  }) = _ChatModel;
  factory ChatModel.fromJson(Map<String, dynamic> json) => _$ChatModelFromJson(json);
}