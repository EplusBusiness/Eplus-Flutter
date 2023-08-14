import 'dart:async';
import 'package:eplusflutter/api/provider/api_pdfpreview_provider.dart';

import '../../models/response/attachment_response.dart';
import '../api.dart';
import 'package:get/get.dart';

class ApiPdfPreviewRepository {
  ApiPdfPreviewRepository({required this.apiProvider});

  final ApiPdfPreviewProvider apiProvider;

  Future<AttachmentResponse?> upload(FormData data) async {
    final res = await apiProvider.upload(ApiConstants.uploadImage, data);
    if (res.statusCode == 200) {
      return AttachmentResponse.fromJson(res.body);
    }
  }
}