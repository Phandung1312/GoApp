import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/domain/entities/message.dart';
import 'package:go_app_client/helpers/toast.dart';
import 'package:go_app_client/presentation/bloc/chat/chat/chat_cubit.dart';
import 'package:go_app_client/presentation/pages/home/chat/sections/message_item.dart';
import 'package:go_app_client/presentation/widgets/loading_overlay.dart';

class ChatBodySection extends StatefulWidget {
  const ChatBodySection({super.key});

  @override
  State<ChatBodySection> createState() => _ChatBodySectionState();
}

class _ChatBodySectionState extends State<ChatBodySection> {
  final ScrollController _scrollController = ScrollController();
  List<Message> messages = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatCubit, ChatState>(
      listener: (context, state) {
        if (state is ChatLoadAllMessageSucces) {
          setState(() {
            messages.addAll(state.messages);
          });

          _scrollToBottom();
          return;
        }
        if (state is ChatReceivedMessage) {
          setState(() {
            messages.add(state.message);
          });
          _scrollToBottom();
          return;
        }
        if (state is ChatUserFocus) {
          _scrollToBottom();
          return;
        }
        if (state is ChatLoadAllError) {
          ToastHelper.showToast(
              message: "Đã xảy ra lỗi khi tải tin nhắn, xin hãy thử lại ");
          Navigator.pop(context);
        }
      },
      buildWhen: (previous, current) =>
          current is ChatLoadingAllMessages ||
          current is ChatLoadAllMessageSucces,
      builder: (context, state) {
        if (state is ChatLoadingAllMessages) {
          return Container(
              color: Colors.grey.shade200,
              child: const Center(child: spinKitWave));
        }
        return Container(
          color: Colors.grey.shade200,
          padding: const EdgeInsets.only(bottom: 20),
          child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.vertical,
              itemCount: messages.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var message = messages[index];
                return ChatMessageItem(
                    isMeChatting: state.userId == message.senderId,
                    avatar: state.driverInfo?.avtUrl ?? "",
                    message: message);
              }),
        );
      },
    );
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.jumpTo(
        _scrollController.position.maxScrollExtent,
      );
    });
  }
}
