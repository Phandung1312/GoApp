import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/presentation/bloc/login/login_bloc.dart';
import 'package:go_app_client/presentation/widgets/main_tool_bar.dart';
import 'package:lottie/lottie.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneEditingController = TextEditingController();
  final TextEditingController _nameEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginRegisterSuccess) {
          Navigator.pushNamedAndRemoveUntil(
              context, Paths.main, (route) => false);
          return;
        }
        if (state is LoginFailure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text("Đã có lỗi xảy ra"),
            action: SnackBarAction(label: "Đã rõ", onPressed: () {}),
          ));
        }
      },
      builder: (context, state) => SafeArea(
        child: Scaffold(
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const MainToolBar(
                  isBack: false,
                  title: "Đăng kí",
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            controller: _nameEditingController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Họ và tên không được để trống";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                focusColor: Color.fromARGB(0, 34, 223, 100),
                                prefixIcon: Icon(Icons.book_outlined),
                                prefixIconColor: Colors.black,
                                labelText: "Tên",
                                hintText: "Ví dụ: Nguyễn Văn A",
                                labelStyle: TextStyle(color: Colors.black),
                                hintStyle:
                                    TextStyle(color: AppColors.hintText)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            controller: _phoneEditingController,
                            validator: _validateMobile,
                            decoration: const InputDecoration(
                                focusColor: Color.fromARGB(0, 34, 223, 100),
                                prefixIcon: Icon(Icons.phone),
                                prefixIconColor: Colors.black,
                                labelText: "Số điện thoại",
                                hintText: "092384932",
                                labelStyle: TextStyle(color: Colors.black),
                                hintStyle:
                                    TextStyle(color: AppColors.hintText)),
                          ),
                        ],
                      )),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: state is LoginInprogress
                      ? Container(
                          decoration: const BoxDecoration(
                              color: AppColors.backgroundInactiveButton,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: Lottie.asset(
                              'assets/animations/loading_dots.json',
                              height: 60),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              context.read<LoginBloc>().add(
                                  LoginRegisterCustomer(
                                      name: _nameEditingController.text,
                                      mobile: _phoneEditingController.text));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(20.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              backgroundColor: AppColors.primaryGreen),
                          child: const Text(
                            "Đăng ký",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? _validateMobile(String? value) {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = RegExp(patttern);
    if (value == null || value.isEmpty) {
      return 'Vui lòng nhập số điện thoại';
    } else if (!regExp.hasMatch(value)) {
      return 'Vui lòng nhập đúng định dạng số điện thoại';
    }
    return null;
  }
}
