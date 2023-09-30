import 'dart:async';
import 'package:eplusflutter/core/shared_references.dart';
import 'package:eplusflutter/models/request/insert_folder_request.dart';
import 'package:eplusflutter/models/request/search_folder_request.dart';
import 'package:eplusflutter/models/response/folder_home_response.dart';
import '../../models/response/category_response.dart';
import '../../src/home/home_state.dart';
import '../api.dart';

class ApiHomeRepository {
  ApiHomeRepository({required this.apiProvider});

  final ApiHomeProvider apiProvider;

  Future<FolderHomeResponse?> getAllCategorys() async {
    final company = await SharedPreferencesUtil.getCompany();
    final res = await apiProvider.getAllFolders(ApiConstants.rootCategory + company);

    if (res.statusCode == 200) {
      return FolderHomeResponse.fromJson(res.body);
    }
  }

  Future<UserInfo?> getUserInfo() async {
    final res = await apiProvider.getUserInfo(ApiConstants.userDetail);
    if (res.statusCode == 200) {
      return UserInfo.fromJson(res.body);
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
