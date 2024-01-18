import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'account_request_model.freezed.dart';

@freezed
class AccountRequestModel with _$AccountRequestModel {
  const factory AccountRequestModel({
    @Default(0) int id,
     String? fullname,
     bool? gender,
    DateTime? dateOfBirth,
    String? phoneNumber,
    File? avatar,
  }) = _AccountRequestModel;
}
