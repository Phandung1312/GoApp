
import 'package:go_app_driver/data/mappers/base_model_mapper.dart';
import 'package:go_app_driver/data/models/account_model.dart';
import 'package:go_app_driver/domain/entities/account.dart';
import 'package:injectable/injectable.dart';

@injectable
class AccountModelMapper extends BaseModelMapper<AccountModel, Account>{
  @override
  Account maptoEntity(AccountModel? model) {
    return Account(
      name: model?.fullName ?? "",

    );
  }
 

}