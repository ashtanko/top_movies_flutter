import 'package:flutter_test/flutter_test.dart';
import 'package:top_movies_flutter/domain/entity/movie.dart';

void main() {
  group('Movie Test', () {
    test('supports value comparison', () async {
      expect(const Movie(id: '0'), const Movie(id: '0'));
    });

    test('crop with resize factor 2', () async {
      final img =
          'https://imdb-api.com/images/original/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg';
      final actual = Movie(id: '0', image: img).croppedImage(2);
      print(actual);
      expect(
        'https://imdb-api.com/images/original/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_UX512_CR0,3,512.jpg',
        actual,
      );
    });

    test('crop with resize factor 4', () async {
      final img =
          'https://imdb-api.com/images/original/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg';
      final actual = Movie(id: '0', image: img).croppedImage(4);
      print(actual);
      expect(
        'https://imdb-api.com/images/original/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_UX2048_CR0,3,2048.jpg',
        actual,
      );
    });

    test('crop with resize factor 1', () async {
      final img =
          'https://imdb-api.com/images/original/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg';
      final actual = Movie(id: '0', image: img).croppedImage(1);
      print(actual);
      expect(
        'https://imdb-api.com/images/original/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_UX256_CR0,3,256.jpg',
        actual,
      );
    });

  });
}
