import 'package:flutter/material.dart';
import 'package:go_app_driver/config/colors.dart';
import 'package:go_app_driver/config/styles.dart';

class MainToolBar extends StatelessWidget {
  final bool isBack;
  const MainToolBar({Key? key, this.isBack = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(
          height: 20,
        ),
        SizedBox(
            width: double.infinity,
            child: Stack(alignment: Alignment.center, children: [
              if (isBack)
                Positioned(
                    left: 10,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back),
                    )),
              const Positioned(
                  child: Text(
                "Đăng kí tài xế",
                style: Styles.titleText,
              )),
            ])),
        const SizedBox(height: 10),
        const Divider(
          color: AppColors.grayLine,
          thickness: 1,
        )
      ],
    );
  }
}