import 'package:flutter/material.dart';
import 'package:go_app_client/presentation/pages/home/chat/sections/bottom_chat_section.dart';
import 'package:go_app_client/presentation/pages/home/chat/sections/chat_bar_section.dart';
import 'package:go_app_client/presentation/pages/home/chat/sections/chat_body_section.dart';



class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  void initState() {
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ChatBarSection(),
          Expanded(
              child: ChatBodySection()
          ),
          BottomChatSection()
        ],
      )),
    );
  }
}