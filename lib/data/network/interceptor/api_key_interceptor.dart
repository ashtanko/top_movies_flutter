import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class ApiKeyInterceptor extends Interceptor {
  ApiKeyInterceptor();

  static const String apiKey = 'k_gikx4tnv';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.path = '${options.path}/$apiKey';
    super.onRequest(options, handler);
  }
}
