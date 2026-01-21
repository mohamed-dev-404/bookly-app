import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AppLogInterceptor extends Interceptor {
  final _log = debugPrint;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _log('============ REQUEST ============');
    _log('➡️  ${options.method} ${options.path}');
    _log('Headers: ${options.headers}');
    _log('Query: ${options.queryParameters}');
    _log('Body: ${options.data}');
    _log('=================================');

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _log('============ RESPONSE ============');
    _log('➡️  ${response.statusCode} ${response.requestOptions.path}');
    _log('Body: ${response.data}');
    _log('=================================');

    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _log('============ ERROR ============');
    _log('❌ ${err.type}');
    _log('StatusCode: ${err.response?.statusCode}');
    _log('Message: ${err.message}');
    _log('=================================');

    super.onError(err, handler);
  }
}
