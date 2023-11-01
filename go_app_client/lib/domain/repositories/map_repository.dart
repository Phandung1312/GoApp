import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/domain/entities/map_autocomplete.dart';
import 'package:go_app_client/domain/entities/map_reverse.dart';

abstract class MapRepository {
  Future<Either<Failure, List<MapAutoComplete>>> getAddressesFromText(
      String query);
  Future<Either<Failure, MapReverse>> getAddressFromLatLng(
      {required double lat, required double lng, int? cats});
}
