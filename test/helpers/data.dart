import 'package:top_movies_flutter/domain/entity/movie.dart';

final mockMovies = [
  const Movie(
    id: 'tt0111161',
    rank: '1',
    title: 'The Shawshank Redemption',
    fullTitle: 'The Shawshank Redemption (1994)',
    year: '1994',
    image:
        'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX128_CR0,3,128,176_AL_.jpg',
    crew: 'Frank Darabont (dir.), Tim Robbins, Morgan Freeman',
    imDbRating: '9.2',
    imDbRatingCount: '2533865',
  ),
  const Movie(
      id: 'tt0068646',
      rank: '2',
      title: 'The Godfather',
      fullTitle: 'The Godfather (1972)',
      year: '1972',
      image:
          'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX128_CR0,1,128,176_AL_.jpg',
      crew: 'Francis Ford Coppola (dir.), Marlon Brando, Al Pacino',
      imDbRating: '9.1',
      imDbRatingCount: '1744224')
];
