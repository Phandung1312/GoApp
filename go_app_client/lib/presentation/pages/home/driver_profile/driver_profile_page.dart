import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/presentation/widgets/main_tool_bar.dart';

class DriverProfilePage extends StatelessWidget {
  const DriverProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const MainToolBar(
            isBack: true,
            title: "Thông tin tài xế",
          ),
          const SizedBox(
            height: 10,
          ),
          const CircleAvatar(
            radius: 100,
            backgroundColor: AppColors.primaryGreen,
            child: Icon(
              Icons.person_2_rounded,
              color: Colors.white,
              size: 200,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          _info(
              image: AppImages.icUserName,
              lable: "Tên tài xế",
              content: "Nguyễn Văn A"),
          _info(image: AppImages.icGender, lable: "Giới tính", content: "Nam"),
          _info(
              image: AppImages.icPhone,
              lable: "Số điện thoại",
              content: "023827487382"),
          _info(
              image: AppImages.icCalendar,
              lable: "Ngày sinh",
              content: "22/01/2002"),
          _info(
              image: AppImages.icRegisterDay,
              lable: "Bắt đầu từ",
              content: "15/09/2023"),
          _info(
              image: AppImages.icVehicleType,
              lable: "Loại phương tiện",
              content: "Xe máy"),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Image(
                  image: AppImages.icReview,
                  fit: BoxFit.cover,
                  width: 30,
                  color: AppColors.primaryGreen,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Đánh giá",
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 50,
                ),
                Expanded(
                    child: Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "4.9" + ' • ',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      RatingBar.builder(
                          itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 10,
                              ),
                          itemSize: 20,
                          initialRating: 4.9,
                          allowHalfRating: true,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4),
                          direction: Axis.horizontal,
                          itemCount: 5,
                          minRating: 1,
                          onRatingUpdate: (rating) {})
                    ],
                  ),
                ))
              ],
            ),
          )
        ],
      )),
    );
  }

  Widget _info(
      {required ImageProvider<Object> image,
      required String lable,
      required String content}) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Image(
            image: image,
            fit: BoxFit.cover,
            width: 30,
            color: AppColors.primaryGreen,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            lable,
            style: const TextStyle(
                fontFamily: 'Nunito',
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            width: 50,
          ),
          Expanded(
              child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              content,
              style: const TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          )),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
