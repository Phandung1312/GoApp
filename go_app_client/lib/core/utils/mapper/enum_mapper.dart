
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_client/domain/entities/enum/account_status.dart';


class AccountStatusConverter implements JsonConverter<AccountStatus, String>{
  const AccountStatusConverter();
  @override
  AccountStatus fromJson(String json) {
    switch (json){
      case 'unregistered' :
        return AccountStatus.unregistered;
      case 'registered' :
        return AccountStatus.registered;
      case 'blocked' :
        return AccountStatus.blocked;
      case 'uncheck' :
        return AccountStatus.uncheck;
      default :
        return AccountStatus.unknown;
    }
  }

  @override
  String toJson(AccountStatus object) {
    switch(object){
      case AccountStatus.unregistered :
        return 'unregistered';
      case AccountStatus.registered :
        return 'registered';
      case AccountStatus.blocked :
        return 'blocked';
      case AccountStatus.uncheck :
        return 'uncheck';
      default:
        return 'unregistered';
    }
  }

}