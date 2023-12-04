import 'package:flutter/material.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/styles.dart';
import 'package:go_app_client/presentation/pages/home/chat/sections/chat_message_item.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
           Card(
            elevation: 1,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero)),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nguyen Van A",
                        style: Styles.largeText,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("59P1-383.45" ' • ' "Honda Airblade")
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.phone,
                  size: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.grey.shade200,
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(15),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: const [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Hôm nay 13:45",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ChatMessageItem(
                          isMeChatting: false,
                          avatar: "",
                          messageBody: "Tôi đang đến"),
                      ChatMessageItem(
                          isMeChatting: true, avatar: "", messageBody: "OK"),
                           ChatMessageItem(
                          isMeChatting: false,
                          avatar: "",
                          messageBody: "5 phút nữa"),
                           ChatMessageItem(
                          isMeChatting: true,
                          avatar: "",
                          messageBody: "Nhất trí"),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       Expanded(
                        child: TextField(
                          maxLines: 5,
                          minLines: 1,
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                              border:  const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              hintText: "Nhấn vào để chat",
                              hintStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
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
                )
              ],
            ),
          ))
        ],
      )),
    );
    
  }
}
