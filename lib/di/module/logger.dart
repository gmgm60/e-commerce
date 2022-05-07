import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class MyLoggerInject {

  Logger get logger {
    Logger logger = Logger(level: Level.error);

    return logger;
  }
}
