part of 'register_bloc.dart';



abstract class RegisterEvent {}

class SendRegisterInfo extends RegisterEvent {
  RegisterInfo registerInfo;
  SendRegisterInfo({required this.registerInfo});
}
