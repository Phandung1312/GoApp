import 'package:flutter/material.dart';
import 'package:go_app_client/config/colors.dart';

class ChatMessageItem extends StatelessWidget {
  final bool isMeChatting;
  final String messageBody;
  final String avatar;
  const ChatMessageItem(
      {super.key,
      required this.isMeChatting,
      required this.avatar,
      required this.messageBody});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 10),
      child: Row(
           mainAxisAlignment: isMeChatting ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isMeChatting) ...[
            const CircleAvatar(
              backgroundColor: Colors.blue,
            ),
            const SizedBox(width: 10),
          ],
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: isMeChatting
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      )
                    : const BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                color: isMeChatting ? AppColors.primaryGreen : Colors.white),
            child: Text(
              messageBody,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: isMeChatting ? Colors.white : Colors.black),
              textAlign: isMeChatting ? TextAlign.end : TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
