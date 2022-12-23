import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:top_movies_flutter/index.dart';

part 'movie_service.g.dart';

@RestApi(baseUrl: NetworkConfig.baseUrl)
@injectable
abstract class MovieService {
  @factoryMethod
  factory MovieService(Dio dio) = _MovieService;

  @GET('/API/Top250Movies')
  Future<MoviesModel> getMovies();
}
