


import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/core/usecase/usecase.dart';
import 'package:go_app_driver/domain/entities/map_reverse.dart';
import 'package:go_app_driver/domain/repositories/map_repository.dart';

import 'package:injectable/injectable.dart';

@lazySingleton
class SearchAddressFromLatLngUseCase extends UseCase<MapReverse, LocationPoint>{
  final MapRepository _mapRepository;

  SearchAddressFromLatLngUseCase(this._mapRepository);
  @override
  Future<Either<Failure, MapReverse>> call(LocationPoint params) {
    return _mapRepository.getAddressFromLatLng(lat: params.lat, lng: params.long, cats: params.category);
  }
}

class LocationPoint {
  final double lat;
  final double long;
  final int? category;
  LocationPoint({required this.lat, required this.long, this.category});
}
