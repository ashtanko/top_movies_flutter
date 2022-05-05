import 'package:flutter_test/flutter_test.dart';
import 'package:top_movies_flutter/models/movie.dart';

void main() {
  group('Movie Test', () {
    test('supports value comparison', () async {
      expect(const Movie(id: '0'), const Movie(id: '0'));
    });
  });
}
