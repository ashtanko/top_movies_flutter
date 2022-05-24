import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:top_movies_flutter/data/models/movie_model.dart';

part 'movies_model.g.dart';

@immutable
@JsonSerializable()
class MoviesModel extends Equatable {
  factory MoviesModel.fromJson(Map<String, dynamic> json) =>
      _$MoviesModelFromJson(json);

  MoviesModel({
    required this.movies,
  });

  @JsonKey(name: 'items')
  final List<MovieModel> movies;

  @override
  List<Object?> get props => [movies];
}
