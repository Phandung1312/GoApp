import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/domain/entities/enum/account_status.dart';
import 'package:go_app_client/helpers/toast.dart';
import 'package:go_app_client/presentation/bloc/login/login_bloc.dart';
import 'package:toast/toast.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginInprogress) {
            showDialog(
                context: context,
                builder: (context) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primaryGreen,
                    ),
                  );
                },
                barrierDismissible: false);
          }
          if (state is LoginSucess) {
            switch (state.status) {
              case AccountStatus.unregistered:
                {
                  Navigator.of(context).pop();
                  Future.delayed(const Duration(milliseconds: 100), () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, Paths.register, (route) => false);
                  });
                  break;
                }
              case AccountStatus.blocked:
                {
                  Navigator.of(context).pop();
                   ToastHelper.showToast(
                message:
                    "Rất tiếc, tài khoản của bạn đã bị khóa");
                  break;
                }
              case AccountStatus.registered:
                {
                  Navigator.of(context).pop();
                  Future.delayed(const Duration(milliseconds: 100), () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, Paths.main, (route) => false);
                  });
                  break;
                }
              default:
                break;
            }
          }
           if(state is LoginFailure){
              Navigator.of(context).pop();
                 Toast.show("Đã có lỗi xảy ra, xin vui lòng thử lại",
              duration: Toast.lengthShort, gravity: Toast.bottom);
          }
        },
        child: SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/background_login.png'),
                    fit: BoxFit.cover,
                  )),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 200,
                      ),
                      const Image(
                          image: AppImages.appLogo,
                          fit: BoxFit.cover,
                          width: 200),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text("Dịch vụ tìm xe nhanh chóng",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 150),
                      InkWell(
                        onTap: () {
                          context.read<LoginBloc>().add(LoginStarted());
                        },
                        child: SizedBox(
                          height: 60,
                          width: double.infinity,
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: AppColors.borderGreen,
                                width: 1.0,
                              ),
                            ),
                            child: const Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                    left: 10,
                                    // top: 10,
                                    // bottom: 10,
                                    child: Image(
                                      image: AppImages.icGoogle,
                                      fit: BoxFit.cover,
                                      width: 30,
                                    )),
                                Positioned(
                                    child: Text("Đăng nhập với Google",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            decoration: TextDecoration.none)))
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ))),
        ));
  }
}
