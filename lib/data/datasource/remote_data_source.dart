import 'package:injectable/injectable.dart';
import 'package:top_movies_flutter/data/models/movie_model.dart';
import 'package:top_movies_flutter/data/service/movie_service.dart';

abstract class RemoteDataSource {
  Future<List<MovieModel>> getMovies();
}

@injectable
class RemoteDataSourceImpl implements RemoteDataSource {
  RemoteDataSourceImpl(this.service);

  final MovieService service;

  @override
  Future<List<MovieModel>> getMovies() async {
    final movies = await service.getMovies();

    return movies.movies;
  }
}
