import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/domain/entities/map_autocomplete.dart';
import 'package:go_app_client/domain/entities/map_place.dart';
import 'package:go_app_client/domain/entities/map_reverse.dart';
import 'package:go_app_client/domain/entities/map_routing.dart';
import 'package:go_app_client/domain/entities/map_routing_params.dart';

abstract class MapRepository {
  Future<Either<Failure, List<MapAutoComplete>>> getAddressesFromText(
      String query);
  Future<Either<Failure, MapReverse>> getAddressFromLatLng(
      {required double lat, required double lng, int? cats});
  Future<Either<Failure, MapPlace>> getPlaceDetail(
      {required String placeId});
      Future<Either<Failure,MapRouting>> findRout({required MapRoutingParams params});

}
