part of 'chat_cubit.dart';

class ChatState {
  int? conversationId;
  int? userId;
  CustomerInfo? customerInfo;
  ChatState({this.userId, this.customerInfo, this.conversationId});
}

class ChatInitial extends ChatState {}

class ChatLoadingAllMessages extends ChatState {
  ChatLoadingAllMessages(
      {required int userId, required CustomerInfo customerInfo})
      : super(userId: userId, customerInfo: customerInfo);
}

class ChatLoadAllMessageSucces extends ChatState {
  final List<Message> messages;
  ChatLoadAllMessageSucces(
      {required int conversationId,
      required this.messages,
      required ChatState state})
      : super(
            userId: state.userId,
            customerInfo: state.customerInfo,
            conversationId: conversationId);
}

class ChatReceivedMessage extends ChatState {
  final Message message;
  ChatReceivedMessage({required this.message, required ChatState state})
      : super(userId: state.userId, customerInfo: state.customerInfo, conversationId: state.conversationId);
}

class ChatUserFocus extends ChatState{
  ChatUserFocus({required ChatState state})
      : super(userId: state.userId, customerInfo: state.customerInfo, conversationId: state.conversationId);
}

