import 'dart:async';
import 'package:eplusflutter/api/provider/api_create_form_provider.dart';
import '../../models/response/attachment_response.dart';
import '../../models/response/list_items_for_form_response.dart';
import '../api.dart';
import 'package:get/get.dart';

class ApiCreateFormRepository {
  ApiCreateFormRepository({required this.apiProvider});

  final ApiCreateFormProvider apiProvider;

  Future<ListItemsFormResponse?> getAllItems(String id) async {
    final res = await apiProvider.getAllItems(ApiConstants.allItems + id);

    if (res.statusCode == 200) {
      return ListItemsFormResponse.fromJson(res.body);
    }
  }

  Future<AttachmentResponse?> upload(FormData data) async {
    final res = await apiProvider.upload(ApiConstants.uploadImage, data);
    if (res.statusCode == 200) {
      return AttachmentResponse.fromJson(res.body);
    }
  }
}
