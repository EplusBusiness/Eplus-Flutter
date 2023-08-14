import 'package:get/get.dart';
import '../base_provider.dart';

class ApiCreateFormProvider extends BaseProvider {
  Future<Response> getAllItems(String path) {
    return get(path);
  }

  Future<Response> upload(String path, FormData data) {
    return post(path, data);
  }
}
