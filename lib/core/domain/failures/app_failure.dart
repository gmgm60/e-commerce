abstract class AppFailure {
  final String message;

  AppFailure(this.message);
}

abstract class RemoteAppFailure extends AppFailure {
  RemoteAppFailure(String message) : super(message);
}

abstract class LocalAppFailure extends AppFailure {
  LocalAppFailure(String message) : super(message);
}
