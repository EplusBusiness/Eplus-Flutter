import '../../models/response/forms_search_reponse.dart';
import '../../models/response/list_items_search_response.dart';
import '../api_constants.dart';
import '../provider/api_search_storage_provider.dart';

class ApiSearchStorageRepository {
  ApiSearchStorageRepository({required this.apiProvider});

  final ApiSearchStorageProvider apiProvider;

  Future<ListItemsSearchResponse?> getAllItems(String id) async {
    final res = await apiProvider.getAllItems(ApiConstants.allItems + id);

    if (res.statusCode == 200) {
      return ListItemsSearchResponse.fromJson(res.body);
    }
  }

  Future<FormsSearchResponse?> getAllForms(String id) async {
    final res = await apiProvider.getAllForms(ApiConstants.allForms + id);
    if (res.statusCode == 200) {
      return FormsSearchResponse.fromJson(res.body);
    }
  }
}
