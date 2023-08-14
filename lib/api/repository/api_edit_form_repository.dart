import '../../models/response/attachment_response.dart';
import 'package:get/get.dart';
import '../../models/response/list_item_edit_form_response.dart';
import '../../src/edit_form/edit_form_state.dart';
import '../api_constants.dart';
import '../provider/api_edit_form_provider.dart';

class ApiEditFormRepository {
  ApiEditFormRepository({required this.apiProvider});

  final ApiEditFormProvider apiProvider;

  Future<AttachmentResponse?> upload(FormData data) async {
    final res = await apiProvider.upload(ApiConstants.uploadImage, data);
    if (res.statusCode == 200) {
      return AttachmentResponse.fromJson(res.body);
    }
  }

  Future<FormInfoData?> getForm(String id) async {
    final res = await apiProvider.getForm(ApiConstants.getForm + id);
    if (res.statusCode == 200) {
      return FormInfoData.fromJson(res.body);
    }
  }

  Future<ListItemsFormResponse?> getAllItems(String id) async {
    final res = await apiProvider.getAllItems(ApiConstants.allItems + id);

    if (res.statusCode == 200) {
      return ListItemsFormResponse.fromJson(res.body);
    }
  }
}