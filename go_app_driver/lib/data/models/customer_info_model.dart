import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/core/utils/mapper/data_mapper.dart';
import 'package:go_app_driver/domain/entities/customer_info.dart';
part 'customer_info_model.freezed.dart';
part 'customer_info_model.g.dart';

@freezed
class CustomerInfoModel with _$CustomerInfoModel implements DataMapper<CustomerInfo>{
  const CustomerInfoModel._();
  const factory CustomerInfoModel({
    required int id,
     String? fullName,
    String?  phoneNumber,
    String?  avatarUrl,
  }) = _CustomerInfoModel;

  factory CustomerInfoModel.fromJson(Map<String, dynamic> json) => _$CustomerInfoModelFromJson(json);
  
  @override
  CustomerInfo maptoEntity() {
    return CustomerInfo(
      id: id,
      fullName: fullName ?? '',
      phoneNumber: phoneNumber ?? "",
      avatarUrl: avatarUrl ?? ""
    );
  }
}
