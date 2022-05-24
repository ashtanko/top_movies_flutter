import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:top_movies_flutter/domain/entity/movie.dart';
import 'package:top_movies_flutter/domain/repository/movie_list_repository.dart';

part 'movie_list_bloc.freezed.dart';

part 'movie_list_event.dart';

part 'movie_list_state.dart';

@injectable
class MovieListBloc extends Bloc<MovieListEvent, MovieListState> {
  MovieListBloc(this._movieRepository) : super(const MovieListState.initial()) {
    on<MovieListEvent>(
      (event, emit) => event.map(
        load: (e) => _onLoad(emit, e),
      ),
    );
  }

  final MovieListRepository _movieRepository;

  Future<void> _onLoad(
    Emitter<MovieListState> emit,
    _LoadMoviesEvent event,
  ) async {
    emit(const MovieListState.loading());

    try {
      final movies = await _movieRepository.getMovies();
      if (movies.isEmpty) {
        emit(const MovieListState.emptyList());
      } else {
        emit(MovieListState.loaded(movies: movies));
      }
    } on Exception catch (e) {
      emit(MovieListState.error(exception: e));
    }
  }
}
