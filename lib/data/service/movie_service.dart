import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:top_movies_flutter/index.dart';

@lazySingleton
class MovieService {
  MovieService(this._dioClient, this._logger);

  final DioClient _dioClient;
  final Logger _logger;

  Future<List<Movie>> getMovies() async {
    try {
      var response = await _dioClient.get(
        Endpoints.live,
      ) as Map<String, dynamic>;

      return Movies.fromJson(response).movies;
    } catch (e) {
      _logger.e(e);
      rethrow;
    }
  }
}
