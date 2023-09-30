import 'dart:io';
import 'dart:ui';

import 'package:get/get.dart';
import 'package:eplusflutter/models/request/insert_folder_request.dart';
import '../../models/request/search_folder_request.dart';
import '../base_provider.dart';

class ApiHomeProvider extends BaseProvider {
  Future<Response> getAllFolders(String path) {
    return get(path);
  }

  Future<Response> insertFolder(String path, InsertFolderRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> searchFolder(String path, SearchFolderRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> getUserInfo(String path) {
    return get(path);
  }
}
