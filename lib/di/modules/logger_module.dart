import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:top_movies_flutter/util/util.dart';

@module
abstract class LoggerModule {
  @factoryMethod
  Logger get logger => createLogger(level: Level.debug);
}
