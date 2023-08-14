import 'dart:async';
import '../../models/response/list_items_reponse.dart';
import '../api.dart';
import '../provider/api_storage_provider.dart';

class ApiStorageRepository {
  ApiStorageRepository({required this.apiProvider});
  final ApiStorageProvider apiProvider;

  Future<ListItemsResponse?> getAllItems(String id) async {
    final res = await apiProvider.getAllItems(ApiConstants.allItems + id);

    if (res.statusCode == 200) {
      return ListItemsResponse.fromJson(res.body);
    }
  }
}