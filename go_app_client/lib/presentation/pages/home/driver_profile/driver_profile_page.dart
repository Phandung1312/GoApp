import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/domain/entities/driver_info.dart';
import 'package:go_app_client/extensions/enum_extension.dart';
import 'package:go_app_client/presentation/widgets/main_tool_bar.dart';

class DriverProfilePage extends StatelessWidget {
  const DriverProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
        var driverInfo = ModalRoute.of(context)!.settings.arguments as DriverInfo;
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
               CircleAvatar(
                radius: 100,
                backgroundImage: Image.network(driverInfo.avtUrl).image,
              ),
              const SizedBox(
                height: 30,
              ),
              _info(
                  image: AppImages.icUserName,
                  lable: "Tên tài xế",
                  content: driverInfo.fulllName),
              _info(
                  image: AppImages.icGender,
                  lable: "Giới tính",
                  content: driverInfo.gender.boolToGenderString()),
              _info(
                  image: AppImages.icPhone,
                  lable: "Số điện thoại",
                  content: driverInfo.phoneNumber),
              _info(
                  image: AppImages.icCalendar,
                  lable: "Ngày sinh",
                  content: driverInfo.dateOfBirth),
              _info(
                  image: AppImages.icRegisterDay,
                  lable: "Bắt đầu từ",
                  content: "null"),
              _info(
                  image: AppImages.icVehicleType,
                  lable: "Loại phương tiện",
                  content: driverInfo.vehicleType.toName()),
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
                           Text(
                            '${driverInfo.rating.toStringAsFixed(1)} • ',
                            style: const TextStyle(
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
                              initialRating: driverInfo.rating,
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
          ))
       
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
