import 'dart:async';
import 'package:eplusflutter/models/request/add_item_request.dart';
import 'package:eplusflutter/src/add_item//add_items_state.dart';
import 'package:get/get.dart';
import '../../models/response/attachment_response.dart';
import '../api.dart';
import '../provider/api_add_item_provider.dart';

class ApiAddItemRepository {
  ApiAddItemRepository({required this.apiProvider});

  final ApiAddItemProvider apiProvider;

  Future<AttachmentResponse?> upload(FormData data) async {
    final res = await apiProvider.upload(ApiConstants.uploadImage, data);
    if (res.statusCode == 200) {
      return AttachmentResponse.fromJson(res.body);
    }
  }

  Future<ItemInfo?> createItem(AddItemRequest data) async {
    final res = await apiProvider.createItem(ApiConstants.createItem, data);
    if (res.statusCode == 200) {
      return ItemInfo.fromJson(res.body);
    }
  }

  Future<ItemInfo?> getItemInfo(String id) async {
    final res = await apiProvider.getItemInfo(ApiConstants.itemInfo + id);
    if (res.statusCode == 200) {
      return ItemInfo.fromJson(res.body);
    }
  }
}
