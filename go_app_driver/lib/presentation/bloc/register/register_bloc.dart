import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/domain/entities/register_info.dart';
import 'package:go_app_driver/domain/usecases/account/register_driver_usecase.dart';
import 'package:injectable/injectable.dart';

part 'register_event.dart';
part 'register_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterDriverUseCase _registerDriverUseCase;
  RegisterBloc(this._registerDriverUseCase) : super(RegisterInitial()) {
    on<SendRegisterInfo>(_onLoginStarted);
  }

  void _onLoginStarted(SendRegisterInfo event, Emitter<RegisterState> emit) async {
    EasyLoading.show();
    var either = await _registerDriverUseCase(event.registerInfo);
    EasyLoading.dismiss();
    either.fold((l) => emit(RegisterFailure(failure: l)), (r) => emit(RegisterSuccess()));
  }

}