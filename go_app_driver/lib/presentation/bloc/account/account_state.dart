part of 'account_cubit.dart';

@freezed
class AccountState with _$AccountState{
  const factory AccountState.initial() = AccountInitial;
  const factory AccountState.loading() = AccountLoading;
  const factory AccountState.loadSuccess({required DriverInfo driverInfo}) = AccountLoadSuccess;
  const factory AccountState.loadError() = AccountLoadLoadError;
}