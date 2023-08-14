import 'dart:async';
import 'package:eplusflutter/models/request/insert_folder_request.dart';
import 'package:eplusflutter/models/request/search_folder_request.dart';
import 'package:eplusflutter/models/response/folder_home_response.dart';
import '../../models/response/category_response.dart';
import '../api.dart';

class ApiHomeRepository {
  ApiHomeRepository({required this.apiProvider});

  final ApiHomeProvider apiProvider;

  Future<FolderHomeResponse?> getAllCategorys() async {
    final res = await apiProvider.getAllFolders(ApiConstants.allCategory);

    if (res.statusCode == 200) {
      return FolderHomeResponse.fromJson(res.body);
    }
  }

  Future<CategoryResponse?> insertCategory(InsertFolderRequest data) async {
    final res = await apiProvider.insertFolder(ApiConstants.insertCategory, data);

    if (res.statusCode == 200) {
      return CategoryResponse.fromJson(res.body);
    }
  }

  Future<FolderHomeResponse?> searchFolder(SearchFolderRequest data) async {
    final res = await apiProvider.searchFolder(ApiConstants.searchByName, data);

    if (res.statusCode == 200) {
      return FolderHomeResponse.fromJson(res.body);
    }
  }
}
