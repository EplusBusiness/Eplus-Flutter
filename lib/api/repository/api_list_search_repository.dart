import 'dart:async';
import '../../core/shared_references.dart';
import '../../models/response/list_search_response.dart';
import '../api.dart';
import '../provider/api_list_search_provider.dart';

class ApiListSearchRepository {
  ApiListSearchRepository({required this.apiProvider});
  final ApiListSearchProvider apiProvider;

  Future<ListSearchResponse?> searchFolder(String name) async {
    final res = await apiProvider.searchFolder(ApiConstants.searchByName + name);

    if (res.statusCode == 200) {
      return ListSearchResponse.fromJson(res.body);
    }
  }

  Future<ListSearchResponse?> getAllCategorys() async {
    final company = await SharedPreferencesUtil.getCompany();
    final res = await apiProvider.getAllFolders(ApiConstants.allCategory + company);

    if (res.statusCode == 200) {
      return ListSearchResponse.fromJson(res.body);
    }
  }
}