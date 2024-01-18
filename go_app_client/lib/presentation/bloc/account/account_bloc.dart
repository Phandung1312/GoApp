import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/data/models/account_request_model.dart';
import 'package:go_app_client/domain/entities/client_info.dart';
import 'package:go_app_client/domain/usecases/account/get_account_usecase.dart';
import 'package:go_app_client/domain/usecases/account/logout_usecase.dart';
import 'package:go_app_client/domain/usecases/account/update_account_usecase.dart';
import 'package:go_app_client/helpers/share_prefereces.dart';
import 'package:injectable/injectable.dart';

part 'account_bloc.freezed.dart';
part 'account_event.dart';
part 'account_state.dart';

@injectable
class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final GetAccountUseCase _getAccountUseCase;
  final LogOutUseCase _logOutUseCase;
  final UpdateAccountUseCase _updateAccountUseCase;
  AccountBloc(
      this._getAccountUseCase, this._logOutUseCase, this._updateAccountUseCase)
      : super(const AccountState.initial()) {
    on<AccountLoad>(_onLoad);
    on<AccountLogOut>(_onLogOut);
    on<AccountUpdate>(_onUpdateAccount);
  }

  void _onLoad(AccountLoad event, Emitter<AccountState> emit) async {
    emit(const AccountState.loading());
    var id = getUserId();
    var either = await _getAccountUseCase(id);
    either.fold((l) => emit(const AccountState.loadError()),
        (r) => emit(AccountState.loadSuccess(clientInfo: r)));
  }

  void _onLogOut(AccountLogOut event, Emitter<AccountState> emit) async {
    await _logOutUseCase();
    emit(const AccountState.logOutSuccess());
  }

  void _onUpdateAccount(AccountUpdate event, Emitter<AccountState> emit) async {
    EasyLoading.show();
    emit(const AccountState.loading());
    var id = getUserId();
    var either =
        await _updateAccountUseCase(event.accountRequestModel.copyWith(id: id));
    EasyLoading.dismiss();
    either.fold((l) => emit(const AccountState.loadError()),
        (r) => emit(AccountState.loadSuccess(clientInfo: r)));
  }
}
