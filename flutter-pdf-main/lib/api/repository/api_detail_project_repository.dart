import 'dart:async';
import 'package:makepdfs/models/request/base_request.dart';
import 'package:makepdfs/models/request/insert_folder_request.dart';
import 'package:makepdfs/models/request/search_folder_request.dart';
import 'package:makepdfs/models/request/update_name_request.dart';
import 'package:makepdfs/models/response/folder_response.dart';
import '../api.dart';
import '../provider/api_detail_project_provider.dart';

class ApiDetailProjectRepository {
  ApiDetailProjectRepository({required this.apiProvider});

  final ApiDetailProjectProvider apiProvider;

  Future<FolderResponse?> getProjectInfo(String id) async {
    final res = await apiProvider.getProjectInfo(ApiConstants.categoryWithId + id);

    if (res.statusCode == 200) {
      return FolderResponse.fromJson(res.body);
    }
  }

  Future<FolderResponse?> removeProject(String id) async {
    final res = await apiProvider.removeProject(ApiConstants.insertCategory);

    if (res.statusCode == 200) {
      return FolderResponse.fromJson(res.body);
    }
  }

  Future<FolderResponse?> updateProject(String id, UpdateNameRequest data) async {
    final res = await apiProvider.updateProject(ApiConstants.insertCategory + id, data);

    if (res.statusCode == 200) {
      return FolderResponse.fromJson(res.body);
    }
  }
}
