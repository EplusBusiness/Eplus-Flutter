import '../../models/request/base_request.dart';
import '../../models/request/insert_folder_request.dart';
import '../../models/response/detail_brand_response.dart';
import '../../src/detail_brand/detail_brand_state.dart';
import '../api_constants.dart';
import '../provider/api_detail_brand_provider.dart';

class ApiDetailBrandRepository {
  ApiDetailBrandRepository({required this.apiProvider});

  final ApiDetailBrandProvider apiProvider;

  Future<DetailBrandResponse?> getAllProjects(String id) async {
    final res = await apiProvider.getAllProjects(ApiConstants.categoryWithId + id);

    if (res.statusCode == 200) {
      return DetailBrandResponse.fromJson(res.body);
    }
  }

  Future<FolderInfo?> insertProject(InsertFolderRequest data) async {
    final res = await apiProvider.insertProject(ApiConstants.insertCategory, data);

    if (res.statusCode == 200) {
      return FolderInfo.fromJson(res.body);
    }
  }

  Future<DetailBrandResponse?> removeProject(BaseRequest data) async {
    final res = await apiProvider.removeProject(ApiConstants.insertCategory, data);

    if (res.statusCode == 200) {
      return DetailBrandResponse.fromJson(res.body);
    }
  }
}