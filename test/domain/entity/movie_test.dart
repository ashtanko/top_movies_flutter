import 'package:flutter_test/flutter_test.dart';
import 'package:top_movies_flutter/domain/entity/movie.dart';

void main() {
  group('Movie Test', () {
    test('supports value comparison', () async {
      expect(const Movie(id: '0'), const Movie(id: '0'));
    });

    test('supports value comparison', () async {
      final img =
          'https://imdb-api.com/images/original/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg';
      final actual = Movie(id: '0', image: img).croppedImage(2);
      print(actual);
      expect(
        'https://imdb-api.com/images/original/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_UX512_CR0,3,512.jpg',
        actual,
      );
    });
  });
}
