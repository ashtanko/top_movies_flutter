import 'package:flutter_test/flutter_test.dart';
import 'package:top_movies_flutter/domain/entity/movies.dart';

void main() {
  group('Movies Test', () {
    test('supports value comparison', () async {
      expect(const Movies(movies: []), const Movies(movies: []));
    });
  });
}
