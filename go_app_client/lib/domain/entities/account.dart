
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
@freezed
class Account with _$Account{
  const factory Account(
    {
      @Default("") String name,
      @Default(true) bool gender,
      @Default("") String dateOfBirht,
      @Default("") String phoneNumber,
      @Default("") String address,
      @Default("") String email,
      @Default("") String cardId,
      @Default("") String avatar,
      @Default("") String licensePlates,
      @Default(0) int status,
      @Default(0) int vehicleTypeId,
    }
  ) = _Account;
}