import 'package:injectable/injectable.dart';
import 'package:top_movies_flutter/data/datasource/remote_data_source.dart';
import 'package:top_movies_flutter/domain/repository/movie_list_repository.dart';

@module
abstract class RepositoryModule {
  @factoryMethod
  MovieListRepository provideMovieListRepository(
    RemoteDataSource remoteDataSource,
  ) {
    return MovieListRepositoryImpl(remoteDataSource);
  }
}
