import 'dart:async';
import 'package:eplusflutter/models/request/update_name_request.dart';
import 'package:eplusflutter/src/detail_project/detail_project_state.dart';
import '../../models/response/remove_category_response.dart';
import '../api.dart';
import '../provider/api_detail_project_provider.dart';

class ApiDetailProjectRepository {
  ApiDetailProjectRepository({required this.apiProvider});

  final ApiDetailProjectProvider apiProvider;

  Future<FolderInfo?> getProjectInfo(String id) async {
    final res = await apiProvider.getProjectInfo(ApiConstants.categoryInfoWithId + id);

    if (res.statusCode == 200) {
      return FolderInfo.fromJson(res.body);
    }
  }

  Future<CategoryResponse?> removeProject(String id) async {
    final res = await apiProvider.removeProject(ApiConstants.deleteCategory + id);

    if (res.statusCode == 200) {
      return CategoryResponse.fromJson(res.body);
    }
  }

  Future<CategoryResponse?> updateProject(String id, UpdateNameCategoryRequest data) async {
    final res = await apiProvider.updateProject(ApiConstants.categoryUpdateName + id, data);

    if (res.statusCode == 200) {
      return CategoryResponse.fromJson(res.body);
    }
  }
}
