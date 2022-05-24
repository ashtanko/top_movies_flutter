import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:top_movies_flutter/data/datasource/remote_data_source.dart';

import '../../mocks.dart';

void main() {
  group('RemoteDataSource Tests', () {
    late RemoteDataSource dataSource;

    setUp(() {
      dataSource = MockRemoteDataSource();
    });

    group('loadData', () {
      test('returns list of movie_list', () {
        when(dataSource.getMovies()).thenAnswer(
          (_) => Future.value(mockMovieModels),
        );
        expect(
          dataSource.getMovies(),
          completion(equals(mockMovieModels)),
        );
      });

      test('returns empty list', () {
        when(dataSource.getMovies()).thenAnswer((_) => Future.value([]));
        expect(
          dataSource.getMovies(),
          completion(equals([])),
        );
      });
    });
  });
}
