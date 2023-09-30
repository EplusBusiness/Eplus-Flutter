import 'package:get/get_connect/http/src/response/response.dart';

import '../../models/request/base_request.dart';
import '../../models/request/insert_folder_request.dart';
import '../../models/request/update_name_request.dart';
import '../base_provider.dart';

class ApiDetailBrandProvider extends BaseProvider {
  Future<Response> getAllProjects(String path) {
    return get(path);
  }

  Future<Response> insertProject(String path, InsertFolderRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> removeProject(String path) {
    return delete(path);
  }

  Future<Response> updateFolder(String path, UpdateNameCategoryRequest data) {
    return post(path, data.toJson());
  }
}