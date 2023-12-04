import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/data/models/client_info_request.dart';
import 'package:go_app_client/domain/entities/enum/account_status.dart';
import 'package:go_app_client/domain/usecases/account/login_usecase.dart';
import 'package:go_app_client/domain/usecases/account/register_customer_usecase.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;
  final RegisterCustomerUseCase _registerCustomerUseCase;
  LoginBloc(this._loginUseCase, this._registerCustomerUseCase)
      : super(LoginInitial()) {
    on<LoginStarted>(_onLoginStarted);
    on<LoginRegisterCustomer>(_onRegisterCustomer);
  }

  void _onLoginStarted(LoginStarted event, Emitter<LoginState> emit) async {
    emit(LoginInprogress());
    var either = await _loginUseCase();
    either.fold((l) => emit(LoginFailure(failure: l)),
        (r) => emit(LoginSucess(status: r)));
  }

  void _onRegisterCustomer(
      LoginRegisterCustomer event, Emitter<LoginState> emit) async {
    emit(LoginInprogress());
    var either = await _registerCustomerUseCase(ClientInfoRequest(fullName: event.name, phoneNumber: event.mobile));
    either.fold((l) => emit(LoginFailure(failure: l)), (r) {
      r
          ? emit(LoginRegisterSuccess())
          : emit(LoginFailure(
              failure: ExceptionFailure(
                  Exception("Đã xảy ra lỗi không muốn, hãy thử lại sau."))));
    });
  }
}
