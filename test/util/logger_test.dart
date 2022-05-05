import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:top_movies_flutter/util/util.dart';

void main() {
  group('Logger Test', () {
    group('test', () {
      test('create verbose logger test', () {
        createLogger(level: Level.info);
        // TODO
      });
    });
  });
}
