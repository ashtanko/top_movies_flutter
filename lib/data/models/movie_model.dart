import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:top_movies_flutter/domain/entity/movie.dart';

part 'movie_model.g.dart';

@immutable
@JsonSerializable()
class MovieModel extends Equatable {
  MovieModel({
    required this.id,
    this.rank,
    this.title,
    this.fullTitle,
    this.year,
    this.image,
    this.crew,
    this.imDbRating,
    this.imDbRatingCount,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  final String id;
  final String? rank,
      title,
      fullTitle,
      year,
      image,
      crew,
      imDbRating,
      imDbRatingCount;

  Map<String, dynamic> toJson() => _$MovieModelToJson(this);

  @override
  List<Object?> get props => [
        id,
        rank,
        title,
        fullTitle,
        year,
        image,
        crew,
        imDbRating,
        imDbRatingCount,
      ];

  Movie toMovie() => Movie(
        id: id,
        rank: rank,
        title: title,
        fullTitle: fullTitle,
        year: year,
        image: image,
        crew: crew,
        imDbRating: imDbRating,
        imDbRatingCount: imDbRatingCount,
        releaseDate: year,
        voteAverage: double.parse(imDbRating ?? '0'),
        overview: fullTitle,
      );
}
