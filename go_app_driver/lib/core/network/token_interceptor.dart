import 'package:dio/dio.dart';
import 'package:go_app_driver/core/inject/injection.dart';
import 'package:go_app_driver/helpers/google_authen_helper.dart';
import 'package:go_app_driver/helpers/share_prefereces.dart';

class TokenInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final idToken = getIdToken();
    options.headers['Authorization'] = "Bearer $idToken";
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response != null) {
      if (err.response!.statusCode != null) {
        if (err.response!.statusCode == 401) {
          await GoogleAuthenHelper.refreshToken();
          return handler.resolve(await reTry(err.requestOptions));
        }
      }
    }
    super.onError(err, handler);
  }

  Future<Response<dynamic>> reTry(RequestOptions resquestOption) async {
    final dio = getIt<Dio>(instanceName: 'App');
    final method = resquestOption.method;

    if (method == 'PUT') {
      return await dio.put(resquestOption.path, data: resquestOption.data);
    }
    if (method == 'GET') {
      final data = await dio.get(resquestOption.path);
      return data;
    }
    if (method == 'DELETE') {
      return await dio.delete(resquestOption.path, data: resquestOption.data);
    }
    return await dio.post(resquestOption.path, data: resquestOption.data);
  }
}
