// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      id: json['id'] as String,
      rank: json['rank'] as String?,
      title: json['title'] as String?,
      fullTitle: json['fullTitle'] as String?,
      year: json['year'] as String?,
      image: json['image'] as String?,
      crew: json['crew'] as String?,
      imDbRating: json['imDbRating'] as String?,
      imDbRatingCount: json['imDbRatingCount'] as String?,
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'id': instance.id,
      'rank': instance.rank,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'year': instance.year,
      'image': instance.image,
      'crew': instance.crew,
      'imDbRating': instance.imDbRating,
      'imDbRatingCount': instance.imDbRatingCount,
    };
