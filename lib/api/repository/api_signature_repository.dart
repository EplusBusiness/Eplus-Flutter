import 'dart:async';
import 'package:eplusflutter/models/request/base_request.dart';
import 'package:eplusflutter/models/request/create_form_request.dart';

import '../../models/response/attachment_response.dart';
import '../../models/response/form_response.dart';
import '../api.dart';
import 'package:get/get.dart';
import '../provider/api_signature_provider.dart';

class ApiSignatureRepository {
  ApiSignatureRepository({required this.apiProvider});
  final ApiSignatureProvider apiProvider;

  Future<AttachmentResponse?> upload(FormData data) async {
    final res = await apiProvider.upload(ApiConstants.uploadImage, data);
    if (res.statusCode == 200) {
      return AttachmentResponse.fromJson(res.body);
    }
  }

  Future<FormResponse?> createForm(CreateFormRequest data) async {
    print(data.toJson());
    final res = await apiProvider.createForm(ApiConstants.createForm, data);
    if (res.statusCode == 200) {
      return FormResponse.fromJson(res.body);
    }
  }

  Future<FormResponse?> removeForm(BaseRequest data) async {
    final res = await apiProvider.removeForm(ApiConstants.removeForm + data.id!, data);
    if (res.statusCode == 200) {
      return FormResponse.fromJson(res.body);
    }
  }
}