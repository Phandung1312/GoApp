
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';


@freezed
class Message with _$Message {
  const factory Message({
    @Default(0) int id,
    @Default(0) int conversationId,
    @Default(0) int senderId,
    @Default(0) int receiverId,
    @Default("") String content,
    @Default(0) int createAt,
  }) = _Message;
}
