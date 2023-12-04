

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/usecase/usecase.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/domain/entities/map_routing_params.dart';
import 'package:go_app_client/domain/repositories/booking_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetBookingPriceUseCase extends UseCase<Map<VehicleType, num>,MapRoutingParams>{
  final BookingRepository _repository;
  GetBookingPriceUseCase(this._repository);
  
  @override
  Future<Either<Failure, Map<VehicleType, num>>> call(MapRoutingParams params) {
    return _repository.getBookingPrice(params);
  }
 
  
}