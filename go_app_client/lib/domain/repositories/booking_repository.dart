

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/domain/entities/map_routing_params.dart';

abstract class BookingRepository{
  Future<Either<Failure, Map<VehicleType, num>>> getBookingPrice(MapRoutingParams routingParams);
}