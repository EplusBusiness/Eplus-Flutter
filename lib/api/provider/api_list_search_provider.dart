import 'package:get/get.dart';
import '../base_provider.dart';

class ApiListSearchProvider extends BaseProvider {

  Future<Response> searchFolder(String path) {
    return get(path);
  }

  Future<Response> getAllFolders(String path) {
    return get(path);
  }
}
