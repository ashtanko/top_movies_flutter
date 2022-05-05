// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i4;

import '../bloc/email_list/email_list_bloc.dart' as _i12;
import '../bloc/theme_cubit.dart' as _i8;
import '../data/network/dio_client.dart' as _i11;
import '../data/network/interceptor/logging_interceptor.dart' as _i5;
import '../data/network/network.dart' as _i10;
import '../data/service/movie_service.dart' as _i6;
import '../index.dart' as _i7;
import '../repository/email_list_repository.dart' as _i3;
import 'logger_module.dart' as _i13;
import 'network_module.dart' as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final loggerModule = _$LoggerModule();
  final networkModule = _$NetworkModule();
  gh.factory<_i3.EmailListRepository>(() => _i3.EmailListRepository());
  gh.factory<_i4.Logger>(() => loggerModule.logger);
  gh.singleton<_i5.LoggingInterceptor>(
      _i5.LoggingInterceptor(get<_i4.Logger>()));
  gh.lazySingleton<_i6.MovieService>(
      () => _i6.MovieService(get<_i7.DioClient>(), get<_i4.Logger>()));
  gh.factory<_i8.ThemeCubit>(() => _i8.ThemeCubit());
  gh.factory<_i9.Dio>(() => networkModule.provideDio(
      get<_i10.LoggingInterceptor>(), get<_i4.Logger>()));
  gh.singleton<_i11.DioClient>(
      _i11.DioClient(get<_i9.Dio>(), get<_i4.Logger>()));
  gh.factory<_i12.EmailListBloc>(() =>
      _i12.EmailListBloc(messagesRepository: get<_i3.EmailListRepository>()));
  return get;
}

class _$LoggerModule extends _i13.LoggerModule {}

class _$NetworkModule extends _i14.NetworkModule {}
