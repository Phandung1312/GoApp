import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/core/utils/mapper/data_mapper.dart';
import 'package:go_app_client/domain/entities/message.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel implements DataMapper<Message> {
  const MessageModel._();
  const factory MessageModel({
    int? id,
    int? conversationId,
    required int senderId,
    required int receiverId,
    required String content,
    int? createAt,
  }) = _MessageModel;
  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
  Map<String, dynamic> toMessageRequestJson() {
    return <String, dynamic>{
      'conversationId': conversationId,
      'senderId': senderId,
      'receiverId': receiverId,
      'content': content,
    };
  }

  @override
  Message maptoEntity() {
    return Message(
        id: id ?? 0,
        conversationId: conversationId ?? 0,
        senderId: senderId,
        receiverId: receiverId,
        content: content,
        createAt: createAt ?? 0);
  }

  factory MessageModel.fromEntity(Message message) {
    return MessageModel(
        id: message.id,
        conversationId: message.conversationId,
        senderId: message.senderId,
        receiverId: message.receiverId,
        content: message.content,
        createAt: message.createAt);
  }
}
