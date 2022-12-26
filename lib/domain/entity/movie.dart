import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required String id,
    String? rank,
    String? title,
    String? fullTitle,
    String? year,
    String? image,
    String? crew,
    String? imDbRating,
    String? imDbRatingCount,
    String? releaseDate,
    double? voteAverage,
    String? overview,
  }) = _Movie;
}

extension MovieImageCropping on Movie {
  String croppedImage([int resizeFactor = 1]) {
    final img = image!;
    final wo = img.substring(0, img.length - 4);
    var scaleFactor = 128;
    for (var i = 0; i < resizeFactor; i++) {
      scaleFactor *= 2;
    }
    final result = '${wo}UX${scaleFactor}_CR0,3,$scaleFactor.jpg';

    return result;
  }
}
