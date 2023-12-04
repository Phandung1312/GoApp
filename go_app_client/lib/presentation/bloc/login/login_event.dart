part of 'login_bloc.dart';


abstract class LoginEvent {}

class LoginStarted extends LoginEvent{}


class LoginRegisterCustomer extends LoginEvent{
  final String name;
  final String mobile;
  
  LoginRegisterCustomer({required this.name,required this.mobile});
}