

import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/usecase/usecase.dart';
import 'package:go_app_driver/domain/entities/customer_info.dart';
import 'package:go_app_driver/domain/repositories/booking_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCustomerInfoUseCase extends UseCase<CustomerInfo, int>{
  final BookingRepository _repository;
  GetCustomerInfoUseCase(this._repository);
  
  @override
  Future<Either<Failure, CustomerInfo>> call(int params) {
    return _repository.getCustomerInfo(params);
  }
 

}