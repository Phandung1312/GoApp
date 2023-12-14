import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/domain/entities/enum/account_status.dart';
import 'package:go_app_driver/domain/entities/register_info.dart';
import 'package:go_app_driver/domain/usecases/account/login_usecase.dart';
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
    var either = await _loginUseCase();
      either.fold((l) => emit(LoginFailure(failure: l)), (r) => emit(LoginSucess(status: r)));  
  }

}
