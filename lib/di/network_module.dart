import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:top_movies_flutter/data/network/network.dart';

@module
abstract class NetworkModule {
  final _options = BaseOptions(
    baseUrl: NetworkConfig.baseUrl,
    connectTimeout: NetworkConfig.connectionTimeout,
    receiveTimeout: NetworkConfig.receiveTimeout,
  );

  @factoryMethod
  Dio provideDio(LoggingInterceptor loggingInterceptor, Logger logger) {
    return Dio()
      ..options = _options
      ..interceptors.add(loggingInterceptor);
  }
}
