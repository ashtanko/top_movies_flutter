part of 'movie_list_bloc.dart';

@freezed
class MovieListState with _$MovieListState {
  const factory MovieListState.initial() = InitialMovieListState;

  const factory MovieListState.loading() = LoadingMovieListState;

  const factory MovieListState.emptyList() = EmptyMovieListState;

  const factory MovieListState.loaded({required List<Movie> movies}) =
      LoadedMovieListState;

  const factory MovieListState.error({Exception? exception}) =
      ErrorMovieListState;
}
