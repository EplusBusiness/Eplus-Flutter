import 'dart:async';
import 'package:makepdfs/api/provider/api_detail_folder_provider.dart';
import 'package:makepdfs/models/request/base_request.dart';
import 'package:makepdfs/models/request/insert_folder_request.dart';
import 'package:makepdfs/models/request/search_folder_request.dart';
import 'package:makepdfs/models/response/folder_response.dart';
import '../api.dart';

class ApiDetailFolderRepository {
  ApiDetailFolderRepository({required this.apiProvider});

  final ApiDetailFolderProvider apiProvider;

  Future<FolderResponse?> getAllProjects() async {
    final res = await apiProvider.getAllProjects(ApiConstants.allFolders);

    if (res.statusCode == 200) {
      return FolderResponse.fromJson(res.body);
    }
  }

  Future<FolderResponse?> insertProject(InsertFolderRequest data) async {
    final res = await apiProvider.insertProject(ApiConstants.insertCategory, data);

    if (res.statusCode == 200) {
      return FolderResponse.fromJson(res.body);
    }
  }

  Future<FolderResponse?> RemoveProject(BaseRequest data) async {
    final res = await apiProvider.removeProject(ApiConstants.insertCategory, data);

    if (res.statusCode == 200) {
      return FolderResponse.fromJson(res.body);
    }
  }
}
