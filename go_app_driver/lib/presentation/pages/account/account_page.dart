import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_driver/config/colors.dart';
import 'package:go_app_driver/config/images.dart';
import 'package:go_app_driver/config/routes.dart';
import 'package:go_app_driver/core/utils/utils.dart';
import 'package:go_app_driver/domain/entities/driver_info.dart';
import 'package:go_app_driver/extensions/enum_extension.dart';
import 'package:go_app_driver/helpers/google_authen_helper.dart';
import 'package:go_app_driver/presentation/bloc/account/account_cubit.dart';
import 'package:go_app_driver/presentation/pages/account/sections/info_field_section.dart';
import 'package:go_app_driver/presentation/widgets/main_tool_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  void initState() {
    super.initState();
    context.read<AccountCubit>().onLoad();
  }
  DriverInfo driverInfo = DriverInfo();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AccountCubit, AccountState>(
      listener: (context, state) {
        if (state is AccountLoadSuccess) {
          setState(() {
            driverInfo = state.driverInfo;
          });
        }
      },
      builder: (context, state) => Column(
        children: [
          const MainToolBar(
            
            title: "Thông tin tài khoản",
            isBack : false
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
              content: "13/01/2023"),
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
                          ignoreGestures: true,
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
                          onRatingUpdate: (rating) {}),
                    ],
                  ),
                )),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () async{
              await GoogleAuthenHelper.signOut();
              // ignore: use_build_context_synchronously
              Navigator.pushNamedAndRemoveUntil(context, Paths.login, (route) => false);
            },
            child: Text(
              "Đăng xuất",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
