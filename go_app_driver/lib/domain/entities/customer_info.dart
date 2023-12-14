import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_info.freezed.dart';

@freezed
class CustomerInfo with _$CustomerInfo {
  const factory CustomerInfo({
    @Default(0) int id,
    @Default("") String fullName,
    @Default("") String phoneNumber,
    @Default("") String avatarUrl,
  }) = _CustomerInfo;
}
