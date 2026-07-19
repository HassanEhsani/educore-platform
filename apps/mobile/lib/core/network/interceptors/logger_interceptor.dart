import 'dart:developer';

import 'package:dio/dio.dart';

class LoggerInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('REQUEST');
    log('${options.method} ${options.uri}');
    log(options.headers.toString());

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('RESPONSE');
    log('${response.statusCode}');
    log(response.data.toString());

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('ERROR');
    log(err.message ?? 'Unknown error');

    handler.next(err);
  }
}
