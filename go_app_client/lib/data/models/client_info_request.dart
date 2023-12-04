
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_info_request.freezed.dart';
part 'client_info_request.g.dart';

@freezed
class ClientInfoRequest with _$ClientInfoRequest{
   const factory ClientInfoRequest({required String fullName,required String phoneNumber}) = _ClientInfoRequest;
 factory ClientInfoRequest.fromJson(Map<String, dynamic> json) => _$ClientInfoRequestFromJson(json);
}