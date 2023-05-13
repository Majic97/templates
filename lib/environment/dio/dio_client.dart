import 'package:dio/dio.dart';

import 'network_environment.dart';

abstract class DioProvider {
  Dio get dio;
  String get baseUrl;
  int get statusCode;
  String get statusMessage;
}

class DioProviderBase implements DioProvider {
  DioProviderBase();

  Dio? _dio;
  int _statusCode = 0;
  String _statusMessage = "";

  @override
  Dio get dio => _dio ?? _buildDio();

  @override
  String get baseUrl => _dio?.options.baseUrl ?? '';

  @override
  int get statusCode => _statusCode;

  @override
  String get statusMessage => _statusMessage;

  Dio _buildDio() {
    _dio = Dio(BaseOptions(baseUrl: Env.baseUrl, connectTimeout: const Duration(seconds: 3)));

    _dio!.interceptors.add(InterceptorsWrapper(
      onResponse: (response, handler) {
        _statusCode = response.statusCode ?? 0;
        _statusMessage = response.statusMessage ?? "";
        return handler.next(response);
      },
      onError: (e, handler) {
        _statusCode = e.response?.statusCode ?? 0;
        _statusMessage = e.response?.statusMessage ?? "";
        return handler.next(e);
      },
    ));

    return _dio!;
  }
}
