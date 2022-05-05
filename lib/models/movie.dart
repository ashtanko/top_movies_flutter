import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

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
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
