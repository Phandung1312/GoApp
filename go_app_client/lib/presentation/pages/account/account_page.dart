import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/core/utils/utils.dart';
import 'package:go_app_client/domain/entities/client_info.dart';
import 'package:go_app_client/extensions/enum_extension.dart';
import 'package:go_app_client/presentation/bloc/account/account_bloc.dart';
import 'package:go_app_client/presentation/pages/account/sections/info_field_section.dart';
import 'package:go_app_client/presentation/widgets/main_tool_bar.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  void initState() {
    super.initState();
    context.read<AccountBloc>().add(const AccountEvent.load());
  }

  ClientInfo clientInfo = const ClientInfo();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AccountBloc, AccountState>(
      listener: (context, state) {
        if(state is AccountLoadSuccess){
          setState(() {
            clientInfo  = state.clientInfo;
          });

          return;
        }
        if(state is AccountLogOutSuccess){
          Navigator.pushNamedAndRemoveUntil(context, Paths.login, (route) => false);
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            const MainToolBar(title: "Thông tin tài khoản", isBack: false),
            const SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 100,
              backgroundImage: Image.network(clientInfo.avatarUrl).image,
            ),
            const SizedBox(
              height: 30,
            ),
             info(
                image: AppImages.icEmail,
                lable: "Email",
                content: clientInfo.email),
            info(
                image: AppImages.icUserName,
                lable: "Họ tên",
                content: clientInfo.fullName),
            info(
                image: AppImages.icGender,
                lable: "Giới tính",
                content: clientInfo.gender.boolToGenderString()),
            info(
                image: AppImages.icPhone,
                lable: "Số điện thoại",
                content: clientInfo.phoneNumber),
            info(
                image: AppImages.icCalendar,
                lable: "Ngày sinh",
                content:
                    Utils.fromTimeStamp(timeStamp: clientInfo.dateOfBirth)),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                  context.read<AccountBloc>().add(const AccountEvent.logOut());
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
        );
      },
    );
  }
}
