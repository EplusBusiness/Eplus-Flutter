import 'package:get/get.dart';
import '../base_provider.dart';

class ApiStorageProvider extends BaseProvider {
  Future<Response> getAllItems(String path) {
    return get(path);
  }
}
