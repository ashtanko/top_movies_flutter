// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;

import '../bloc/movie/movie_list_bloc.dart' as _i11;
import '../bloc/theme_cubit.dart' as _i6;
import '../data/datasource/remote_data_source.dart' as _i9;
import '../data/network/dio_client.dart' as _i7;
import '../data/network/interceptor/api_key_interceptor.dart' as _i3;
import '../data/service/movie_service.dart' as _i8;
import '../domain/repository/movie_list_repository.dart' as _i10;
import 'modules/datasource_module.dart' as _i14;
import 'modules/logger_module.dart' as _i13;
import 'modules/network_module.dart' as _i12;
import 'modules/repository_module.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkModule = _$NetworkModule();
  final loggerModule = _$LoggerModule();
  final dataSourceModule = _$DataSourceModule();
  final repositoryModule = _$RepositoryModule();
  gh.singleton<_i3.ApiKeyInterceptor>(_i3.ApiKeyInterceptor());
  gh.factory<_i4.Interceptor>(() => networkModule.provideLoggingInterceptor(),
      instanceName: 'LoggingInterceptor');
  gh.factory<_i4.Interceptor>(() => networkModule.provideApiKeyInterceptor(),
      instanceName: 'ApiKeyInterceptor');
  gh.factory<_i5.Logger>(() => loggerModule.logger);
  gh.factory<_i6.ThemeCubit>(() => _i6.ThemeCubit());
  gh.lazySingleton<_i4.Dio>(() => networkModule.provideDio(
      get<_i4.Interceptor>(instanceName: 'LoggingInterceptor'),
      get<_i4.Interceptor>(instanceName: 'ApiKeyInterceptor')));
  gh.singleton<_i7.DioClient>(_i7.DioClient(get<_i4.Dio>(), get<_i5.Logger>()));
  gh.factory<_i8.MovieService>(() => _i8.MovieService(get<_i4.Dio>()));
  gh.factory<_i9.RemoteDataSource>(
      () => dataSourceModule.provideRemoteDataSource(get<_i8.MovieService>()));
  gh.factory<_i9.RemoteDataSourceImpl>(
      () => _i9.RemoteDataSourceImpl(get<_i8.MovieService>()));
  gh.factory<_i10.MovieListRepository>(() =>
      repositoryModule.provideMovieListRepository(get<_i9.RemoteDataSource>()));
  gh.lazySingleton<_i10.MovieListRepositoryImpl>(
      () => _i10.MovieListRepositoryImpl(get<_i9.RemoteDataSource>()));
  gh.factory<_i11.MovieListBloc>(() =>
      _i11.MovieListBloc(get<_i10.MovieListRepository>(), get<_i5.Logger>()));
  return get;
}

class _$NetworkModule extends _i12.NetworkModule {}

class _$LoggerModule extends _i13.LoggerModule {}

class _$DataSourceModule extends _i14.DataSourceModule {}

class _$RepositoryModule extends _i15.RepositoryModule {}
