part of 'login_bloc.dart';


abstract class LoginState {
  const LoginState();
}
class LoginInitial extends LoginState{}
class LoginInprogress extends LoginState {}

class LoginSucess extends LoginState{
  final AccountStatus status;
  LoginSucess({required this.status});
}

class LoginFailure extends LoginState{
  final Failure failure;
  const LoginFailure({required this.failure}) : super();
}


class LoginRegisterSuccess extends LoginState{
  
}

