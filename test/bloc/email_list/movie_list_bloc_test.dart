import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mockito/mockito.dart';
import 'package:top_movies_flutter/bloc/movie/movie_list_bloc.dart';
import 'package:top_movies_flutter/domain/repository/movie_list_repository.dart';
import 'package:top_movies_flutter/index.dart';
import 'package:top_movies_flutter/util/logger.dart';

import '../../helpers/data.dart';
import '../../mocks.dart';

void main() {
  final mockError = Exception('something went wrong');

  group('Movie List Event Tests', () {
    group('load', () {
      test('supports value comparison', () {
        expect(const MovieListEvent.load(), const MovieListEvent.load());
      });
    });
  });

  group('Movie List State Tests', () {
    group('InitialMovieListState', () {
      test('supports value comparison', () {
        expect(const InitialMovieListState(), const InitialMovieListState());
      });
    });

    group('LoadingMovieListState', () {
      test('supports value comparison', () {
        expect(const LoadingMovieListState(), const LoadingMovieListState());
      });
    });

    group('EmptyMovieListState', () {
      test('supports value comparison', () {
        expect(const EmptyMovieListState(), const EmptyMovieListState());
      });
    });

    group('LoadedMovieListState', () {
      test('supports value comparison', () {
        expect(
          const LoadedMovieListState(movies: []),
          const LoadedMovieListState(movies: []),
        );
      });
    });

    group('ErrorMovieListState', () {
      test('supports value comparison', () {
        expect(const ErrorMovieListState(), const ErrorMovieListState());
      });
    });
  });

  group('MovieListBloc', () {
    late MovieListRepository repository;
    late MovieListBloc bloc;

    setUp(() {
      repository = MockMovieListRepository();
      bloc = MovieListBloc(repository, createLogger(level: Level.verbose));
    });

    tearDown(() => bloc.close());

    test('state returns correct state initially', () {
      expect(bloc.state, const InitialMovieListState());
    });

    group('fetchData', () {
      blocTest<MovieListBloc, MovieListState>(
        'fetches data correctly',
        build: () {
          when(repository.getMovies()).thenAnswer(
            (_) => Future.value(mockMovies),
          );
          return bloc;
        },
        act: (bloc) async => bloc.add(
          const MovieListEvent.load(),
        ),
        verify: (_) => verify(repository.getMovies()).called(1),
        expect: () => [
          const LoadingMovieListState(),
          LoadedMovieListState(movies: mockMovies),
        ],
      );

      blocTest<MovieListBloc, MovieListState>(
        'fetches data correctly but list is empty',
        build: () {
          when(repository.getMovies()).thenAnswer(
            (_) => Future.value([]),
          );
          return bloc;
        },
        act: (bloc) async => bloc.add(
          const MovieListEvent.load(),
        ),
        verify: (_) => verify(repository.getMovies()).called(1),
        expect: () => [
          const LoadingMovieListState(),
          const EmptyMovieListState(),
        ],
      );

      blocTest<MovieListBloc, MovieListState>(
        'can throw an exception',
        build: () {
          when(repository.getMovies()).thenThrow(mockError);
          return bloc;
        },
        act: (bloc) async => bloc.add(
          const MovieListEvent.load(),
        ),
        verify: (_) => verify(repository.getMovies()).called(1),
        expect: () => [
          const LoadingMovieListState(),
          ErrorMovieListState(exception: mockError),
        ],
      );
    });
  });
}
