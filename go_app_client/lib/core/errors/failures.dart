abstract class Failure {
  const Failure();
}
class NetworkFailure extends Failure{}
class CacheFailure extends Failure {}

class ApiServerFailure extends Failure {
  final String message;
  const ApiServerFailure(this.message);
}

class ApiTimeOutFailure extends Failure {}

class ExceptionFailure extends Failure {
  final String message;
  const ExceptionFailure(this.message);
}


