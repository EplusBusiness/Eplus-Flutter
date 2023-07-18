import 'dart:async';
import 'package:makepdfs/models/request/insert_folder_request.dart';
import 'package:makepdfs/models/request/search_folder_request.dart';
import 'package:makepdfs/models/response/folder_response.dart';
import '../api.dart';

class ApiHomeRepository {
  ApiHomeRepository({required this.apiProvider});

  final ApiHomeProvider apiProvider;

  Future<FolderResponse?> getAllFolders() async {
    final res = await apiProvider.getAllFolders(ApiConstants.allCategory);

    if (res.statusCode == 200) {
      return FolderResponse.fromJson(res.body);
    }
  }

  Future<FolderResponse?> insertCategory(InsertFolderRequest data) async {
    final res = await apiProvider.insertFolder(ApiConstants.insertCategory, data);

    if (res.statusCode == 200) {
      return FolderResponse.fromJson(res.body);
    }
  }

  Future<FolderResponse?> searchFolder(SearchFolderRequest data) async {
    final res = await apiProvider.searchFolder(ApiConstants.searchByName, data);

    if (res.statusCode == 200) {
      return FolderResponse.fromJson(res.body);
    }
  }
}
