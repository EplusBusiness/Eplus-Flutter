import 'package:get/get.dart';
import '../base_provider.dart';

class ApiSearchStorageProvider extends BaseProvider {
  Future<Response> getAllForms(String path) {
    return get(path);
  }

  Future<Response> getAllItems(String path) {
    return get(path);
  }
}