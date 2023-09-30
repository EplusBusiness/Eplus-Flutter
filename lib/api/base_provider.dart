import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'api.dart';

class BaseProvider extends GetConnect {
  final timeoutApi = const Duration(seconds: 10);

  @override
  Future<Response<T>> get<T>(String url,
      {Map<String, String>? headers,
      String? contentType,
      Map<String, dynamic>? query,
      Decoder<T>? decoder}) {
    return super
        .get(url,
            headers: headers,
            contentType: contentType,
            query: query,
            decoder: decoder)
        .timeout(timeoutApi, onTimeout: () {
      EasyLoading.dismiss();
      return const Response(statusCode: 408, bodyString: "time out");
    });
  }

  @override
  Future<Response<T>> post<T>(String? url, body,
      {String? contentType,
      Map<String, String>? headers,
      Map<String, dynamic>? query,
      Decoder<T>? decoder,
      Progress? uploadProgress}) {
    // TODO: implement post
    return super
        .post(url, body,
            contentType: contentType,
            headers: headers,
            query: query,
            decoder: decoder,
            uploadProgress: uploadProgress)
        .timeout(timeoutApi, onTimeout: () {
      EasyLoading.dismiss();
      return const Response(statusCode: 408, bodyString: "time out");
    });
  }

  @override
  Future<Response<T>> delete<T>(String url,
      {Map<String, String>? headers,
      String? contentType,
      Map<String, dynamic>? query,
      Decoder<T>? decoder}) {
    // TODO: implement delete
    return super
        .delete(url,
            headers: headers,
            contentType: contentType,
            query: query,
            decoder: decoder)
        .timeout(timeoutApi,
            onTimeout: () {
              EasyLoading.dismiss();
              return const Response(statusCode: 408, bodyString: "time out");
            });
  }

  @override
  void onInit() {
    httpClient.baseUrl = ApiConstants.baseUrl;
    httpClient.timeout = const Duration(seconds: 10);
    httpClient.addAuthenticator(authInterceptor);
    httpClient.addRequestModifier(requestInterceptor);
    httpClient.addResponseModifier(responseInterceptor);
  }
}
