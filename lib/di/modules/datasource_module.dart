import 'package:injectable/injectable.dart';
import 'package:top_movies_flutter/data/datasource/remote_data_source.dart';
import 'package:top_movies_flutter/data/service/movie_service.dart';

@module
abstract class DataSourceModule {
  @factoryMethod
  RemoteDataSource provideRemoteDataSource(MovieService service) {
    return RemoteDataSourceImpl(service);
  }
}
