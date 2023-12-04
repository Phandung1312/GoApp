

import 'package:dio/dio.dart';
import 'package:go_app_client/helpers/share_prefereces.dart';

class TokenInterceptor  extends Interceptor{
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final idToken = getIdToken();
    options.headers['Authorization'] = "Bearer $idToken";
    super.onRequest(options, handler);
  }
}