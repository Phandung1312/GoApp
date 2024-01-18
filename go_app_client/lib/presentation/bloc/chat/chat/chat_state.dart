part of 'chat_cubit.dart';

class ChatState {
  int? conversationId;
  int? userId;
  DriverInfo? driverInfo;
  ChatState({this.userId, this.driverInfo, this.conversationId});
}

class ChatInitial extends ChatState {}

class ChatLoadingAllMessages extends ChatState {
  ChatLoadingAllMessages(
      {required int userId, required DriverInfo driverInfo})
      : super(userId: userId, driverInfo: driverInfo);
}
class ChatLoadAllError extends ChatState{
  
}
class ChatLoadAllMessageSucces extends ChatState {
  final List<Message> messages;
  ChatLoadAllMessageSucces(
      {required int conversationId,
      required this.messages,
      required ChatState state})
      : super(
            userId: state.userId,
            driverInfo: state.driverInfo,
            conversationId: conversationId);
}

class ChatReceivedMessage extends ChatState {
  final Message message;
  ChatReceivedMessage({required this.message, required ChatState state})
      : super(userId: state.userId, driverInfo: state.driverInfo, conversationId: state.conversationId);
}


class ChatUserFocus extends ChatState{
  ChatUserFocus({required ChatState state})
      : super(userId: state.userId, driverInfo: state.driverInfo, conversationId: state.conversationId);
}

