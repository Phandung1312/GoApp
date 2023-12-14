import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_driver/config/colors.dart';
import 'package:go_app_driver/config/images.dart';
import 'package:go_app_driver/core/utils/utils.dart';
import 'package:go_app_driver/extensions/enum_extension.dart';
import 'package:go_app_driver/presentation/bloc/account/account_cubit.dart';
import 'package:go_app_driver/presentation/pages/account/sections/info_field_section.dart';
import 'package:go_app_driver/presentation/widgets/loading_overlay.dart';
import 'package:go_app_driver/presentation/widgets/main_tool_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountCubit, AccountState>(
      builder: (context, state) {
        if (state is AccountLoading) {
          return const Center(child: spinKitWave);
        }
        if (state is AccountLoadSuccess) {
          var driverInfo = state.driverInfo;
          return Column(
            children: [
              const MainToolBar(
                title: "Thông tin tài khoản",
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
              info(
                  image: AppImages.icUserName,
                  lable: "Tên tài xế",
                  content: driverInfo.fullName),
              info(
                  image: AppImages.icGender,
                  lable: "Giới tính",
                  content: driverInfo.gender.boolToGenderString()),
              info(
                  image: AppImages.icPhone,
                  lable: "Số điện thoại",
                  content: driverInfo.phoneNumber),
              info(
                  image: AppImages.icCalendar,
                  lable: "Ngày sinh",
                  content: Utils.fromTimeStamp(timeStamp: driverInfo.dateOfBirth)),
              info(
                  image: AppImages.icRegisterDay,
                  lable: "Bắt đầu từ",
                  content: "null"),
              info(
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
                            "${driverInfo.rating}" ' • ',
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
          );
        }
        return Container();
      },
    );
  }
}
