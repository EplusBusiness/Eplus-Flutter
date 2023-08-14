import 'package:get/get.dart';
import '../../models/request/edit_item_request.dart';
import '../base_provider.dart';

class ApiEditItemProvider extends BaseProvider {
  Future<Response> upload(String path, FormData data) {
    return post(path, data);
  }

  Future<Response> getItemInfo(String path) {
    return get(path);
  }

  Future<Response> updateItemInfo(String path, EditItemRequest data) {
    return put(path, data.toJson());
  }

  Future<Response> deleteItemInfo(String path) {
    return delete(path);
  }
}
