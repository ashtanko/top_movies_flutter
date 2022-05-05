import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'movies.freezed.dart';

part 'movies.g.dart';

@freezed
class Movies with _$Movies {
  const factory Movies({
    @JsonKey(name: 'items') @Default([]) List<Movie> movies,
  }) = _Movies;

  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);
}
