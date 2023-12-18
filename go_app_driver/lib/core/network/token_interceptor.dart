

import 'package:dio/dio.dart';
import 'package:go_app_driver/core/inject/injection.dart';
import 'package:go_app_driver/helpers/google_authen_helper.dart';
import 'package:go_app_driver/helpers/share_prefereces.dart';


class TokenInterceptor  extends Interceptor{
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final idToken = getIdToken();
    options.headers['Authorization'] = "Bearer $idToken";
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async{
    if (err.response != null) {
      if (err.response!.statusCode != null) {
        if (err.response!.statusCode == 401 ) {
         await GoogleAuthenHelper.refreshToken();
         final dio = getIt<Dio>(instanceName: 'App');
        }
      }
    }
    super.onError(err, handler);
  }


}