// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  String get id => throw _privateConstructorUsedError;
  String? get rank => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get fullTitle => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get crew => throw _privateConstructorUsedError;
  String? get imDbRating => throw _privateConstructorUsedError;
  String? get imDbRatingCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? rank,
      String? title,
      String? fullTitle,
      String? year,
      String? image,
      String? crew,
      String? imDbRating,
      String? imDbRatingCount});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  final Movie _value;
  // ignore: unused_field
  final $Res Function(Movie) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? rank = freezed,
    Object? title = freezed,
    Object? fullTitle = freezed,
    Object? year = freezed,
    Object? image = freezed,
    Object? crew = freezed,
    Object? imDbRating = freezed,
    Object? imDbRatingCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      fullTitle: fullTitle == freezed
          ? _value.fullTitle
          : fullTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      crew: crew == freezed
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as String?,
      imDbRating: imDbRating == freezed
          ? _value.imDbRating
          : imDbRating // ignore: cast_nullable_to_non_nullable
              as String?,
      imDbRatingCount: imDbRatingCount == freezed
          ? _value.imDbRatingCount
          : imDbRatingCount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) then) =
      __$MovieCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? rank,
      String? title,
      String? fullTitle,
      String? year,
      String? image,
      String? crew,
      String? imDbRating,
      String? imDbRatingCount});
}

/// @nodoc
class __$MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(_Movie _value, $Res Function(_Movie) _then)
      : super(_value, (v) => _then(v as _Movie));

  @override
  _Movie get _value => super._value as _Movie;

  @override
  $Res call({
    Object? id = freezed,
    Object? rank = freezed,
    Object? title = freezed,
    Object? fullTitle = freezed,
    Object? year = freezed,
    Object? image = freezed,
    Object? crew = freezed,
    Object? imDbRating = freezed,
    Object? imDbRatingCount = freezed,
  }) {
    return _then(_Movie(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      fullTitle: fullTitle == freezed
          ? _value.fullTitle
          : fullTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      crew: crew == freezed
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as String?,
      imDbRating: imDbRating == freezed
          ? _value.imDbRating
          : imDbRating // ignore: cast_nullable_to_non_nullable
              as String?,
      imDbRatingCount: imDbRatingCount == freezed
          ? _value.imDbRatingCount
          : imDbRatingCount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Movie implements _Movie {
  const _$_Movie(
      {required this.id,
      this.rank,
      this.title,
      this.fullTitle,
      this.year,
      this.image,
      this.crew,
      this.imDbRating,
      this.imDbRatingCount});

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$$_MovieFromJson(json);

  @override
  final String id;
  @override
  final String? rank;
  @override
  final String? title;
  @override
  final String? fullTitle;
  @override
  final String? year;
  @override
  final String? image;
  @override
  final String? crew;
  @override
  final String? imDbRating;
  @override
  final String? imDbRatingCount;

  @override
  String toString() {
    return 'Movie(id: $id, rank: $rank, title: $title, fullTitle: $fullTitle, year: $year, image: $image, crew: $crew, imDbRating: $imDbRating, imDbRatingCount: $imDbRatingCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Movie &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.rank, rank) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.fullTitle, fullTitle) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.crew, crew) &&
            const DeepCollectionEquality()
                .equals(other.imDbRating, imDbRating) &&
            const DeepCollectionEquality()
                .equals(other.imDbRatingCount, imDbRatingCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(rank),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(fullTitle),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(crew),
      const DeepCollectionEquality().hash(imDbRating),
      const DeepCollectionEquality().hash(imDbRatingCount));

  @JsonKey(ignore: true)
  @override
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieToJson(this);
  }
}

abstract class _Movie implements Movie {
  const factory _Movie(
      {required final String id,
      final String? rank,
      final String? title,
      final String? fullTitle,
      final String? year,
      final String? image,
      final String? crew,
      final String? imDbRating,
      final String? imDbRatingCount}) = _$_Movie;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get rank => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get fullTitle => throw _privateConstructorUsedError;
  @override
  String? get year => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get crew => throw _privateConstructorUsedError;
  @override
  String? get imDbRating => throw _privateConstructorUsedError;
  @override
  String? get imDbRatingCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieCopyWith<_Movie> get copyWith => throw _privateConstructorUsedError;
}
