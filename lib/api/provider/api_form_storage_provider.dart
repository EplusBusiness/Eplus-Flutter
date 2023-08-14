import 'package:get/get.dart';
import '../base_provider.dart';

class ApiFormStorageProvider extends BaseProvider {
  Future<Response> getAllForms(String path) {
    return get(path);
  }
}