part of 'account_bloc.dart';

@freezed
 class AccountEvent with _$AccountEvent{
  const factory AccountEvent.load() = AccountLoad;
  const factory AccountEvent.updateAccount(AccountRequestModel accountRequestModel) = AccountUpdate;
  const factory AccountEvent.logOut() = AccountLogOut;
 }
