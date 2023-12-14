part of 'login_bloc.dart';

abstract class LoginEvent {}

class LoginStarted extends LoginEvent {}

class LoginRegisterDriver extends LoginEvent {
  RegisterInfo registerInfo;
  LoginRegisterDriver({required this.registerInfo});
}
