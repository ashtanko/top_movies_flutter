// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i4;

import '../bloc/movie/movie_list_bloc.dart' as _i14;
import '../bloc/theme_cubit.dart' as _i9;
import '../data/datasource/remote_data_source.dart' as _i8;
import '../data/network/dio_client.dart' as _i12;
import '../data/network/interceptor/api_key_interceptor.dart' as _i3;
import '../data/network/interceptor/logging_interceptor.dart' as _i5;
import '../data/network/network.dart' as _i11;
import '../data/service/movie_service.dart' as _i6;
import '../domain/repository/movie_list_repository.dart' as _i13;
import '../index.dart' as _i7;
import 'datasource_module.dart' as _i16;
import 'logger_module.dart' as _i15;
import 'network_module.dart' as _i17;
import 'repository_module.dart' as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final loggerModule = _$LoggerModule();
  final dataSourceModule = _$DataSourceModule();
  final networkModule = _$NetworkModule();
  final repositoryModule = _$RepositoryModule();
  gh.singleton<_i3.ApiKeyInterceptor>(_i3.ApiKeyInterceptor());
  gh.factory<_i4.Logger>(() => loggerModule.logger);
  gh.singleton<_i5.LoggingInterceptor>(
      _i5.LoggingInterceptor(get<_i4.Logger>()));
  gh.lazySingleton<_i6.MovieService>(
      () => _i6.MovieService(get<_i7.DioClient>(), get<_i4.Logger>()));
  gh.factory<_i8.RemoteDataSource>(
      () => dataSourceModule.provideRemoteDataSource(get<_i6.MovieService>()));
  gh.lazySingleton<_i8.RemoteDataSourceImpl>(
      () => _i8.RemoteDataSourceImpl(get<_i6.MovieService>()));
  gh.factory<_i9.ThemeCubit>(() => _i9.ThemeCubit());
  gh.factory<_i10.Dio>(() => networkModule.provideDio(
      get<_i11.LoggingInterceptor>(),
      get<_i3.ApiKeyInterceptor>(),
      get<_i4.Logger>()));
  gh.singleton<_i12.DioClient>(
      _i12.DioClient(get<_i10.Dio>(), get<_i4.Logger>()));
  gh.factory<_i13.MovieListRepository>(() =>
      repositoryModule.provideMovieListRepository(get<_i8.RemoteDataSource>()));
  gh.lazySingleton<_i13.MovieListRepositoryImpl>(
      () => _i13.MovieListRepositoryImpl(get<_i8.RemoteDataSource>()));
  gh.factory<_i14.MovieListBloc>(
      () => _i14.MovieListBloc(get<_i13.MovieListRepository>()));
  return get;
}

class _$LoggerModule extends _i15.LoggerModule {}

class _$DataSourceModule extends _i16.DataSourceModule {}

class _$NetworkModule extends _i17.NetworkModule {}

class _$RepositoryModule extends _i18.RepositoryModule {}
