import 'package:get/get.dart';
import '../../models/request/insert_folder_request.dart';
import '../../models/request/base_request.dart';
import '../../src/detail_folder/detail_folder_state.dart';
import '../base_provider.dart';

class ApiDetailFolderProvider extends BaseProvider {
  Future<Response> getAllProjects(String path) {
    return get(path);
  }

  Future<Response> insertProject(String path, InsertFolderRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> removeProject(String path, BaseRequest data) {
    return post(path, data.toJson());
  }

  // Future<Response> editProject(String path, DetailFolderInfo data) {
  //   return post(path, data.toJson());
  // }
}
