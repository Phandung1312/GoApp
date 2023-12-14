

import 'package:flutter/material.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/core/utils/utils.dart';
import 'package:go_app_client/domain/entities/message.dart';


class ChatMessageItem extends StatelessWidget {
  final bool isMeChatting;
  final Message message;
  final String avatar;
  const ChatMessageItem(
      {super.key,
      required this.isMeChatting,
      required this.avatar,
      required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
      child: Column(
        children: [
          Text(Utils.fromTimeStamp(timeStamp: message.createAt , format: "HH:mm dd/MM/yyyy")),
          const SizedBox(
            height: 10,
          ),
          Row(
               mainAxisAlignment: isMeChatting ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              if (!isMeChatting) ...[
                 CircleAvatar(
                  backgroundImage: Image.network(avatar).image,
                ),
                const SizedBox(width: 10),
              ],
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                  message.content,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: isMeChatting ? Colors.white : Colors.black),
                  textAlign: isMeChatting ? TextAlign.end : TextAlign.start,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}