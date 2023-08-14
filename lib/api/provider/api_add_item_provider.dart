import 'package:eplusflutter/models/request/add_item_request.dart';
import 'package:get/get.dart';
import '../base_provider.dart';

class ApiAddItemProvider extends BaseProvider {
  Future<Response> upload(String path, FormData data) {
    return post(path, data);
  }

  Future<Response> createItem(String path, AddItemRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> getItemInfo(String path) {
    return get(path);
  }
}
