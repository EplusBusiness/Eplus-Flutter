import 'package:eplusflutter/models/request/base_request.dart';
import 'package:eplusflutter/models/request/create_form_request.dart';
import 'package:get/get.dart';
import '../base_provider.dart';

class ApiSignatureProvider extends BaseProvider {
  Future<Response> upload(String path, FormData data) {
    return post(path, data);
  }

  Future<Response> createForm(String path, CreateFormRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> removeForm(String path, BaseRequest data) {
    return post(path, data.toJson());
  }
}