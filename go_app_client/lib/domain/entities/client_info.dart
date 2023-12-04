import 'package:freezed_annotation/freezed_annotation.dart';
part 'client_info.freezed.dart';

@freezed
class ClientInfo with _$ClientInfo {
  const factory ClientInfo({
    @Default("") String fullName,
    @Default("") String email,
    @Default("") String phoneNumber,
    @Default("") String dateOfBirth,
    @Default("") String avatarUrl,
    @Default(true) bool gender,
    @Default(false) bool block,
  }) = _ClientInfo;
}
