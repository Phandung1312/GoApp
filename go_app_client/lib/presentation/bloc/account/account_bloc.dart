import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/domain/entities/client_info.dart';
import 'package:go_app_client/domain/usecases/account/get_account_usecase.dart';
import 'package:go_app_client/domain/usecases/account/logout_usecase.dart';
import 'package:go_app_client/helpers/share_prefereces.dart';
import 'package:injectable/injectable.dart';

part 'account_bloc.freezed.dart';
part 'account_event.dart';
part 'account_state.dart';

@injectable
class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final GetAccountUseCase _getAccountUseCase;
  final LogOutUseCase _logOutUseCase;
  AccountBloc(this._getAccountUseCase, this._logOutUseCase)
      : super(const AccountState.initial()) {
    on<AccountLoad>(_onLoad);
    on<AccountLogOut>(_onLogOut);
  }

  void _onLoad(AccountLoad event, Emitter<AccountState> emit) async {
    emit(const AccountState.loading());
    var id = getUserId();
    var either = await _getAccountUseCase(id);
    either.fold((l) => null, (r) => emit(AccountState.loadSuccess(clientInfo: r)));
  }

  void _onLogOut(AccountLogOut event, Emitter<AccountState> emit) async {
    await _logOutUseCase();
    emit(const AccountState.logOutSuccess());
  }
}
