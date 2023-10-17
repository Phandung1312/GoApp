import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/presentation/bloc/login/login_bloc.dart';

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
                      color: AppClors.primaryGreen,
                    ),
                  );
                },
                barrierDismissible: false);
          }
        },
        child: SafeArea(
            child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/background_login.png'),
                )),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    const Text("GO",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    const Image(
                        image: AssetImage("assets/images/ic_taxi.png"),
                        fit: BoxFit.cover,
                        width: 200),
                    const Text("Find a best",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.normal)),
                    const SizedBox(height: 5),
                    const Text("Vehicle ride",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: SizedBox(
                        height: 50,
                        width: 300,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                15), // Bo góc với bán kính 15
                            border: Border.all(
                              color: AppClors
                                  .borderGreen, // Màu sắc của đường viền
                              width: 1.0, // Độ dày của đường viền
                            ),
                          ),
                          child: const Row(
                            children: [
                              Image(
                                image:
                                    AssetImage("assets/images/ic_google.png"),
                                fit: BoxFit.cover,
                                width: 30,
                              ),
                              SizedBox(width: 30),
                              Text("Login with Google",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      decoration: TextDecoration.none))
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ))));
  }
}
