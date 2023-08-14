import 'dart:async';
import 'package:get/get.dart';
import '../../models/request/edit_item_request.dart';
import '../../models/response/attachment_response.dart';
import '../../src/edit_item/edit_items_state.dart';
import '../api.dart';
import '../provider/api_edit_item_provider.dart';

class ApiEditItemRepository {
  ApiEditItemRepository({required this.apiProvider});

  final ApiEditItemProvider apiProvider;

  Future<AttachmentResponse?> upload(FormData data) async {
    final res = await apiProvider.upload(ApiConstants.uploadImage, data);
    if (res.statusCode == 200) {
      return AttachmentResponse.fromJson(res.body);
    }
  }

  Future<ItemInfo?> getItemInfo(String id) async {
    final res = await apiProvider.getItemInfo(ApiConstants.itemInfo + id);
    if (res.statusCode == 200) {
      return ItemInfo.fromJson(res.body);
    }
  }

  Future<ItemInfo?> editItemInfo(String id, EditItemRequest data) async {
    final res = await apiProvider.updateItemInfo(ApiConstants.itemEditInfo + id, data);
    if (res.statusCode == 200) {
      return ItemInfo.fromJson(res.body);
    }
  }

  Future<ItemInfo?> deleteItemInfo(String id) async {
    final res = await apiProvider.delete(ApiConstants.itemInfo + id);
    if (res.statusCode == 200) {
      return ItemInfo.fromJson(res.body);
    }
  }
}
