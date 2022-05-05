// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movies _$$_MoviesFromJson(Map<String, dynamic> json) => _$_Movies(
      movies: (json['items'] as List<dynamic>?)
              ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MoviesToJson(_$_Movies instance) => <String, dynamic>{
      'items': instance.movies,
    };
