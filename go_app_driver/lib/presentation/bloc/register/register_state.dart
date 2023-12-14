part of 'register_bloc.dart';


abstract class RegisterState {
  const RegisterState();
}
class RegisterInitial extends RegisterState{}
class RegisterInprogress extends RegisterState {}

class RegisterSuccess extends RegisterState{

}

class RegisterFailure extends RegisterState{
  final Failure failure;
  const RegisterFailure({required this.failure}) : super();
}
