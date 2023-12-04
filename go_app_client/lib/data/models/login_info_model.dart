
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/core/utils/mapper/enum_mapper.dart';
import 'package:go_app_client/domain/entities/enum/account_status.dart';

part 'login_info_model.freezed.dart';
part 'login_info_model.g.dart';

@freezed
class LoginInfoModel with _$LoginInfoModel{
  const factory LoginInfoModel(
    {

      DataModel? data,
      String? message,
    }
  ) = _LoginInfoModel;
   factory LoginInfoModel.fromJson(Map<String, dynamic> json) => _$LoginInfoModelFromJson(json);
}

@freezed
class DataModel with _$DataModel{
  const factory DataModel(
    {
      @AccountStatusConverter()
      AccountStatus? status,
      String? role,
    }
  ) = _DataModel;
     factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
}


