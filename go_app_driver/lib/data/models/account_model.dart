import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

@freezed
class AccountModel with _$AccountModel{
  const factory AccountModel(
      {required int id,
      String? fullName,
      String? email,
      String? phoneNumber,}
  ) = _AccountModel;
  factory AccountModel.fromJson(Map<String, dynamic> json) => _$AccountModelFromJson(json);
}