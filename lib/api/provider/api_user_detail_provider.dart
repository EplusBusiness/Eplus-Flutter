import 'package:get/get.dart';
import '../base_provider.dart';

class ApiUserDetailProvider extends BaseProvider {
  Future<Response> upload(String path, FormData data) {
    return post(path, data);
  }
}