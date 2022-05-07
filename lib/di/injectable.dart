import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injectable.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection({String? environment}) async {
  await $initGetIt(getIt, environment: environment);
}

abstract class InjectInv {
  static const dev = "dev";
  static const test = "test";
  static const localMock = "localMock";
  static const prod = "prod";
}
