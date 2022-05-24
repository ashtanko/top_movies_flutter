import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:top_movies_flutter/domain/repository/movie_list_repository.dart';

import '../helpers/data.dart';
import '../mocks.dart';

void main() {
  group('Messages Repository Tests', () {
    late MovieListRepository repository;

    setUp(() {
      repository = MockMovieListRepository();
    });

    group('loadData', () {
      test('returns list of movie_list', () {
        when(repository.getMovies()).thenAnswer(
          (_) => Future.value(mockMovies),
        );
        expect(
          repository.getMovies(),
          completion(equals(mockMovies)),
        );
      });

      test('returns empty list', () {
        when(repository.getMovies()).thenAnswer((_) => Future.value([]));
        expect(
          repository.getMovies(),
          completion(equals([])),
        );
      });
    });
  });
}
