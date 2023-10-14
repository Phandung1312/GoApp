import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_driver/config/colors.dart';
import 'package:go_app_driver/config/images.dart';
import 'package:go_app_driver/presentation/bloc/login/login_bloc.dart';
import 'package:go_app_driver/config/routes.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
            Navigator.of(context).pop();

            Future.delayed(const Duration(milliseconds: 100), () {
              Navigator.pushNamed(context, Paths.register);
            });
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
                          // _handleSignIn();
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

  Future<void> _handleSignIn() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      print(googleUser?.displayName ?? "");
    } catch (error) {
      print(error);
    }
  }
}

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
     'https://www.googleapis.com/auth/userinfo.profile'
  ],
);
