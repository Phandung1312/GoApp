import 'package:flutter/material.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/styles.dart';


class MainToolBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isBack;
  final String title;
  const MainToolBar({Key? key, this.title = "", this.isBack = true})
      : preferredSize = const Size.fromHeight(63),
        super(key: key);
  @override
  final Size preferredSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(
          height: 15,
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
              Positioned(
                  child: Text(
                title,
                style: Styles.titleText,
              )),
            ])),
        const SizedBox(height: 10),
        const Divider(
          color: AppColors.grayLine,
          thickness: 1,
          height: 1,
        )
      ],
    );
  }

}

