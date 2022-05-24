import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:top_movies_flutter/domain/entity/movie.dart';

part 'movies.freezed.dart';

@freezed
class Movies with _$Movies {
  const factory Movies({
    @Default([]) List<Movie> movies,
  }) = _Movies;
}
