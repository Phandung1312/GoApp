import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/core/utils/mapper/data_mapper.dart';
import 'package:go_app_client/domain/entities/client_info.dart';
import 'package:intl/intl.dart';

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
      DateTime? dateOfBirth,
      String? avtUrl,
      bool? male,
      bool? nonBlock,
    }) = _ClientInfoModel;

    factory ClientInfoModel.fromJson(Map<String, dynamic> json ) => _$ClientInfoModelFromJson(json);
    
      @override
      ClientInfo maptoEntity() {
        return ClientInfo(
          fullName: fullName ?? "",
          email: email ?? "",
          phoneNumber: phoneNumber ?? "",
          dateOfBirth: dateOfBirth != null ? DateFormat('yyyy-MM-dd').format(dateOfBirth!) : "",
          avatarUrl: avtUrl ?? "",
          gender: male ?? true,
          block: nonBlock ?? false,
        );
      }
}