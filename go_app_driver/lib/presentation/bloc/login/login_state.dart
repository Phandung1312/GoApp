part of 'login_bloc.dart';


abstract class LoginState {
  final String? failureMessage;
  const LoginState({this.failureMessage});
}
class LoginInitial extends LoginState{}
class LoginInprogress extends LoginState {}

class LoginSucess extends LoginState{}

class LoginFailure extends LoginState{

  const LoginFailure(String failureMessage) : super(failureMessage: failureMessage);
}
