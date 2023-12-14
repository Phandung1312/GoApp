import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/domain/entities/driver_info.dart';
import 'package:go_app_driver/domain/usecases/account/get_account_usecase.dart';
import 'package:injectable/injectable.dart';

part 'account_cubit.freezed.dart';
part 'account_state.dart';

@injectable
class AccountCubit extends Cubit<AccountState> {
  final GetAccountUseCase _getAccountUseCase;
  AccountCubit(this._getAccountUseCase) : super(const AccountState.initial()) {
    _onLoad();
  }

  void _onLoad() async {
    emit(const AccountState.loading());
    var either = await _getAccountUseCase();
    either.fold(
        (l) => null, (r) => emit(AccountState.loadSuccess(driverInfo: r)));
  }
}
