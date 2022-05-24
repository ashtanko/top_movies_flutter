import 'package:flutter_test/flutter_test.dart';
import 'package:top_movies_flutter/data/models/movie_model.dart';
import 'package:top_movies_flutter/domain/entity/movie.dart';

void main() {
  final movieModelActual = MovieModel.fromJson(
    const {
      'id': 'tt0111161',
      'rank': '1',
      'title': 'The Shawshank Redemption',
      'fullTitle': 'The Shawshank Redemption (1994)',
      'year': '1994',
      'image':
          'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX128_CR0,3,128,176_AL_.jpg',
      'crew': 'Frank Darabont (dir.), Tim Robbins, Morgan Freeman',
      'imDbRating': '9.2',
      'imDbRatingCount': '2582127'
    },
  );

  final movieModelExpected = MovieModel(
    id: 'tt0111161',
    rank: '1',
    title: 'The Shawshank Redemption',
    fullTitle: 'The Shawshank Redemption (1994)',
    year: '1994',
    image:
        'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX128_CR0,3,128,176_AL_.jpg',
    crew: 'Frank Darabont (dir.), Tim Robbins, Morgan Freeman',
    imDbRating: '9.2',
    imDbRatingCount: '2582127',
  );

  final movie = const Movie(
    id: 'tt0111161',
    rank: '1',
    title: 'The Shawshank Redemption',
    fullTitle: 'The Shawshank Redemption (1994)',
    year: '1994',
    image:
        'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX128_CR0,3,128,176_AL_.jpg',
    crew: 'Frank Darabont (dir.), Tim Robbins, Morgan Freeman',
    imDbRating: '9.2',
    imDbRatingCount: '2582127',
  );

  group('Movie Model Test', () {
    test('supports value comparison', () async {
      expect(MovieModel(id: '0'), MovieModel(id: '0'));
    });

    test('is correctly generated from a JSON', () {
      expect(
        movieModelActual,
        movieModelExpected,
      );
    });
  });

  group('Map to entity', () {
    test(
      'should be a subclass of movie entity',
      () async {
        // act
        final result = movieModelExpected.toMovie();

        // assert
        expect(result, equals(movie));
      },
    );
  });
}
