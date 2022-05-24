import 'package:injectable/injectable.dart';
import 'package:top_movies_flutter/data/datasource/remote_data_source.dart';
import 'package:top_movies_flutter/domain/entity/movie.dart';

abstract class MovieListRepository {
  Future<List<Movie>> getMovies();

  // void save();
}

@lazySingleton
class MovieListRepositoryImpl implements MovieListRepository {
  MovieListRepositoryImpl(this.remoteDataSource);

  final RemoteDataSource remoteDataSource;

  @override
  Future<List<Movie>> getMovies() async {
    final movieModels = await remoteDataSource.getMovies();

    return movieModels.map((e) => e.toMovie()).toList();
  }
}
