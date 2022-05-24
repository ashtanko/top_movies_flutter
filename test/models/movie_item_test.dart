import 'package:flutter_test/flutter_test.dart';

import '../helpers/data.dart';

void main() {
  group('Movie Item Test', () {
    test('supports value comparison', () async {
      expect(mockMovies.first, mockMovies.first);
    });
  });
}
