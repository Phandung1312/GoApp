import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/presentation/bloc/chat/chat/chat_cubit.dart';


class BottomChatSection extends StatefulWidget {
  const BottomChatSection({super.key});

  @override
  State<BottomChatSection> createState() => _BottomChatSectionState();
}

class _BottomChatSectionState extends State<BottomChatSection> {
  final TextEditingController controller = TextEditingController();

  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _onFocusChange();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              onTap: () async {
                await Future.delayed(const Duration(milliseconds: 500), () {
                  context.read<ChatCubit>().onUserFocus();
                });
              },
              focusNode: _focusNode,
              controller: controller,
              maxLines: 5,
              minLines: 1,
              decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: "Nhấn vào để chat",
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.5))),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              if (controller.text.isNotEmpty) {
                context.read<ChatCubit>().sendMessage(controller.text);
                controller.text = "";
              }
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: AppColors.primaryGreen,
                  borderRadius: BorderRadius.circular(13)),
              alignment: Alignment.center,
              child: const Icon(
                Icons.send_rounded,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onFocusChange() async {
    if (_focusNode.hasFocus) {
      await Future.delayed(const Duration(seconds: 2), () {
        context.read<ChatCubit>().onUserFocus();
      });
    } else {}
  }
}
