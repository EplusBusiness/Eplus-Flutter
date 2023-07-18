import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import '../../models/response/error_response.dart';
import 'package:fluttertoast/fluttertoast.dart';

FutureOr<dynamic> responseInterceptor(
    Request request, Response response) async {
  EasyLoading.dismiss();
  responseLogger(response);
  if (response.statusCode != 200) {
    handleErrorStatus(response);
  }

  return response;
}

void handleErrorStatus(Response response) {

  if (response.statusCode != 200) {
    final message = ErrorResponse.fromJson(response.body);
    handleToast(message.message);
  }

  return;
}

void handleToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
  );
}

void responseLogger(Response response) {
  debugPrint('Status Code: ${response.statusCode}\n');
  debugPrint('Data: ${response.bodyString?.toString() ?? ''}');
}
