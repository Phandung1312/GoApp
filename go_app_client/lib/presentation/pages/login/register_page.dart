import 'package:flutter/material.dart';
import 'package:go_app_client/config/colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  child: Form(
                      key: _formKey,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Bạn phải nhập số điện thoại";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                            focusColor:  Color.fromARGB(0, 34, 223, 100),
                            prefixIcon: Icon(Icons.phone),
                            prefixIconColor: Colors.black,
                            labelText: "Số điện thoại",
                            hintText: "092384932",
                            labelStyle:  TextStyle(color: Colors.black),
                            hintStyle:
                                 TextStyle(color: AppColors.hintText)),
                      ))),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
