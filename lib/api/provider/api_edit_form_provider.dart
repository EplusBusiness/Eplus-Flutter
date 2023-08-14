import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get.dart';
import '../base_provider.dart';

class ApiEditFormProvider extends BaseProvider {
  Future<Response> upload(String path, FormData data) {
    return post(path, data);
  }

  Future<Response> getForm(String path) {
    return get(path);
  }

  Future<Response> getAllItems(String path) {
    return get(path);
  }
}