import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_driver/domain/entities/customer_info.dart';
import 'package:go_app_driver/domain/entities/message.dart';
import 'package:go_app_driver/domain/usecases/booking/get_all_messages_usecase.dart';
import 'package:go_app_driver/helpers/share_prefereces.dart';

import 'package:go_app_driver/presentation/bloc/socket/socket_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

part 'chat_state.dart';

@injectable
class ChatCubit extends Cubit<ChatState> {
  final SocketBloc socketBloc;
  StreamSubscription? socketSubscription;
  final GetAllMessagesUseCase _getAllMessagesUseCase;
  ChatCubit(this.socketBloc, this._getAllMessagesUseCase)
      : super(ChatInitial()) {
    socketSubscription = socketBloc.stream.listen((socketState) {
      socketState.whenOrNull(
        receivedMessage: (message){
          Logger().i("Message in chat ${message.toString()}");
          emit(ChatReceivedMessage(message: message, state: state));
        }
      );
    });
  }

  void sendMessage(String text) async {
    var message = Message(
        conversationId: state.conversationId ?? 0,
        senderId: state.userId ?? 0,
        receiverId: state.customerInfo?.id ?? 0,
        content: text);
    socketBloc.sendMessage(message);
  }

  void loadAllMessage(CustomerInfo customerInfo) async {
    emit(ChatLoadingAllMessages(
        userId: getUserId(), customerInfo: customerInfo));
    var either = await _getAllMessagesUseCase();
    either.fold((l) => null, (r) {
      var messages = r.messageResponses?.map((e) => e.maptoEntity()).toList();
      emit(ChatLoadAllMessageSucces(
          messages: messages ?? <Message>[],
          conversationId: r.id,
          state: state));
    });
  }
  
  void onUserFocus(){
    emit(ChatUserFocus(state: state));
  }
 

}
