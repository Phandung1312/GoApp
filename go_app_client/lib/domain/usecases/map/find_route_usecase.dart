

import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/usecase/usecase.dart';
import 'package:go_app_client/domain/entities/map_routing.dart';
import 'package:go_app_client/domain/entities/map_routing_params.dart';
import 'package:go_app_client/domain/repositories/map_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FindRouteUseCase extends UseCase<MapRouting, MapRoutingParams>{
  FindRouteUseCase(this._mapRepository);
  final MapRepository _mapRepository;
  @override
  Future<Either<Failure, MapRouting>> call(MapRoutingParams params) async{
    return await _mapRepository.findRout(params: params);
  }

}