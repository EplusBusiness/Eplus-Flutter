import 'package:eplusflutter/models/request/update_name_request.dart';
import 'package:get/get.dart';
import '../base_provider.dart';

class ApiDetailProjectProvider extends BaseProvider {
  Future<Response> getProjectInfo(String path) {
    return get(path);
  }

  Future<Response> removeProject(String path) {
    return delete(path);
  }

  Future<Response> updateProject(String path, UpdateNameCategoryRequest data) {
    return post(path, data.toJson());
  }
}
