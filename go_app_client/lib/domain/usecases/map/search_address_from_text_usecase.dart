import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/core/usecase/usecase.dart';
import 'package:go_app_client/domain/entities/map_autocomplete.dart';
import 'package:go_app_client/domain/repositories/map_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SearchAddressFromTextUseCase extends UseCase<List<MapAutoComplete>, String>{
  final MapRepository _mapRepository;

  SearchAddressFromTextUseCase(this._mapRepository);
  @override
  Future<Either<Failure, List<MapAutoComplete>>> call(String params) {
    return _mapRepository.getAddressesFromText(params);
  }
}