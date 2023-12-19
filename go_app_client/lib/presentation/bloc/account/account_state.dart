part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState{
  const factory AccountState.initial() = AccountInitial;
  const factory AccountState.loadSuccess({required ClientInfo clientInfo}) = AccountLoadSuccess;
  const factory AccountState.loading() = AccountLoading;
  const factory AccountState.logOutSuccess() = AccountLogOutSuccess;
}
