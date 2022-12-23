import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:top_movies_flutter/data/network/interceptor/api_key_interceptor.dart';
import 'package:top_movies_flutter/data/network/network.dart';

@module
abstract class NetworkModule {
  final _options = BaseOptions(
    baseUrl: NetworkConfig.baseUrl,
    connectTimeout: NetworkConfig.connectionTimeout,
    receiveTimeout: NetworkConfig.receiveTimeout,
  );

  @factoryMethod
  @Named('LoggingInterceptor')
  Interceptor provideLoggingInterceptor() {
    return LoggingInterceptor();
  }

  @factoryMethod
  @Named('ApiKeyInterceptor')
  Interceptor provideApiKeyInterceptor() {
    return ApiKeyInterceptor();
  }

  @lazySingleton
  Dio provideDio(
    @Named('LoggingInterceptor') Interceptor loggingInterceptor,
    @Named('ApiKeyInterceptor') Interceptor apiKeyInterceptor,
  ) {
    return Dio()
      ..options = _options
      ..interceptors.addAll([loggingInterceptor, apiKeyInterceptor]);
  }
}
