
import 'package:dartz/dartz.dart';
import 'package:go_app_client/core/errors/failure.dart';


abstract class UseCase<Type, Params>{
  Future<Either<Failure, Type>> call(Params params);
}