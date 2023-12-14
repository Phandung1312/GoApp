
import 'package:dartz/dartz.dart';
import 'package:go_app_driver/core/errors/failures.dart';
import 'package:go_app_driver/domain/entities/map_reverse.dart';

abstract class MapRepository{
   Future<Either<Failure, MapReverse>> getAddressFromLatLng(
      {required double lat, required double lng, int? cats});
}