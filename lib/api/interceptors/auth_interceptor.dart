import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

import '../../core/shared_references.dart';

FutureOr<Request> authInterceptor(request) async {
  final token = await SharedPreferencesUtil.getToken();
  // request.headers['X-Requested-With'] = 'XMLHttpRequest';
  print('Token ${token}');
  request.headers['Authorization'] = 'Bearer $token';

  return request;
}
