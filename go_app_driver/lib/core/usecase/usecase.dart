abstract class BaseUseCase<T>{
  const BaseUseCase();
}

abstract class UseCase<T, P> extends BaseUseCase<T>{
  const UseCase() : super();
  Future<T> call(P params);
}

abstract class NoPramsUseCase<T> extends BaseUseCase<T>{
  const NoPramsUseCase() : super();
  Future<T> call();
}