
import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/usecase/usecase.dart';
import 'package:go_app_client/domain/entities/map_place.dart';
import 'package:go_app_client/domain/repositories/map_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetPlaceDetailUseCase extends UseCase<MapPlace, String>{
  final MapRepository _mapRepository;
  GetPlaceDetailUseCase(this._mapRepository);

  @override
  Future<Either<Failure, MapPlace>> call(String params) {
    return _mapRepository.getPlaceDetail(placeId: params);
  }
  
}