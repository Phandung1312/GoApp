import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginStarted>(_onLoginStarted);
  }

  void _onLoginStarted(LoginStarted event, Emitter<LoginState> emit) async {
    emit(LoginInprogress());
    await Future.delayed(const Duration(seconds: 2));
    emit(LoginSucess());
  }
}
