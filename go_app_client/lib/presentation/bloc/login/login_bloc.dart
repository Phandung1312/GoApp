import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/domain/usecases/account/login_usecase.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;
  LoginBloc(this._loginUseCase) : super(LoginInitial()) {
    on<LoginStarted>(_onLoginStarted);
  }

    void _onLoginStarted(LoginStarted event, Emitter<LoginState> emit) async {
    emit(LoginInprogress());
    final Account = await _loginUseCase();
    emit(LoginSucess());
  }
}

