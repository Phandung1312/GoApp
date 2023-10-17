
import 'package:flutter/material.dart';
import 'package:go_app_driver/config/images.dart';
import 'package:go_app_driver/config/styles.dart';
import 'package:go_app_driver/presentation/widgets/main_tool_bar.dart';

class PendingPage extends StatelessWidget {
  const PendingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            MainToolBar(title: "Tài khoản được xét duyệt",isBack: true),
            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image :AppImages.backgrounPending, fit: BoxFit.cover, width: 200),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Hồ sơ của bạn đang chờ xét duyệt.\nKết quả sớm được thông báo cho bạn.",
                        textAlign: TextAlign.center,
                      style: Styles.noticeText,),
                    ],
                  ),
                          ),
              )
            )
          ],
        ),
      ),
    );
  }
}