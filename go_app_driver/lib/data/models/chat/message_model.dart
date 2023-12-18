import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/core/utils/mapper/data_mapper.dart';
import 'package:go_app_driver/domain/entities/message.dart';
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

  factory MessageModel.fromJsonSocket(Map<String, dynamic> json) {
    return MessageModel(
        senderId: json['senderId'] as int,
        receiverId: json['receiverId'] as int,
        content: json['content'] as String,
        createAt: (json['createAt'] as String) as int);
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
