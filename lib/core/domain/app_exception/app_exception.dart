abstract class AppException implements Exception {
  final String message;

  AppException(this.message);
}

abstract class RemoteAppException extends AppException {
  RemoteAppException(String message) : super(message);
}

abstract class LocalAppException extends AppException {
  LocalAppException(String message) : super(message);
}
