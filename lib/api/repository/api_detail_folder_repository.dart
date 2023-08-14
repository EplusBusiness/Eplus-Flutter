import 'dart:async';
import 'package:eplusflutter/api/provider/api_detail_folder_provider.dart';
import 'package:eplusflutter/models/request/base_request.dart';
import 'package:eplusflutter/models/request/insert_folder_request.dart';
import 'package:eplusflutter/src/detail_folder/detail_folder_state.dart';
import '../../models/response/detail_folder_response.dart';
import '../api.dart';

class ApiDetailFolderRepository {
  ApiDetailFolderRepository({required this.apiProvider});

  final ApiDetailFolderProvider apiProvider;

  Future<DetailFolderResponse?> getAllProjects(String id) async {
    final res = await apiProvider.getAllProjects(ApiConstants.categoryWithId + id);

    if (res.statusCode == 200) {
      return DetailFolderResponse.fromJson(res.body);
    }
  }

  Future<FolderInfo?> insertProject(InsertFolderRequest data) async {
    final res = await apiProvider.insertProject(ApiConstants.insertCategory, data);

    if (res.statusCode == 200) {
      return FolderInfo.fromJson(res.body);
    }
  }

  Future<DetailFolderResponse?> removeProject(BaseRequest data) async {
    final res = await apiProvider.removeProject(ApiConstants.insertCategory, data);

    if (res.statusCode == 200) {
      return DetailFolderResponse.fromJson(res.body);
    }
  }

  // Future<DetailFolderInfo?> editProject(DetailFolderInfo data) async {
  //   final res = await apiProvider.editProject(ApiConstants.insertCategory, data);
  //
  //   if (res.statusCode == 200) {
  //     return DetailFolderInfo.fromJson(res.body);
  //   }
  // }
}
