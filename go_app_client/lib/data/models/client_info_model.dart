import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/core/utils/mapper/data_mapper.dart';
import 'package:go_app_client/domain/entities/client_info.dart';

part 'client_info_model.freezed.dart';
part 'client_info_model.g.dart';

@freezed
class ClientInfoModel with _$ClientInfoModel implements DataMapper<ClientInfo>{
    const ClientInfoModel._();
    const factory ClientInfoModel({
      required int id,
      String? fullName,
      String? email,
      String? phoneNumber,
      num? dateOfBirth,
      String? avatarUrl,
      bool? gender,
      bool? nonBlock,
    }) = _ClientInfoModel;

    factory ClientInfoModel.fromJson(Map<String, dynamic> json ) => _$ClientInfoModelFromJson(json);
    
      @override
      ClientInfo maptoEntity() {
        return ClientInfo(
          id: id ,
          fullName: fullName ?? "",
          email: email ?? "",
          phoneNumber: phoneNumber ?? "",
          dateOfBirth: dateOfBirth?.toInt() ?? 0,
          avatarUrl: avatarUrl ?? "",
          gender: gender ?? true,
          block: nonBlock ?? false,
        );
      }
}