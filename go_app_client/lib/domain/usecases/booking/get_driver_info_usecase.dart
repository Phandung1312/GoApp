import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/usecase/usecase.dart';
import 'package:go_app_client/domain/entities/driver_info.dart';
import 'package:go_app_client/domain/repositories/booking_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetDriverInfoUseCase extends UseCase<DriverInfo, int> {
  final BookingRepository _repository;
  GetDriverInfoUseCase(this._repository);
  @override
  Future<Either<Failure, DriverInfo>> call(int params) {
    return _repository.getDriverInfo(params);
  }
}
