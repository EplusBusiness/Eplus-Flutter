import 'dart:async';
import 'package:eplusflutter/api/provider/api_user_detail_provider.dart';
import 'package:get/get.dart';
import '../../models/response/attachment_response.dart';
import '../api.dart';

class ApiUserDetailRepository {
  ApiUserDetailRepository({required this.apiProvider});

  final ApiUserDetailProvider apiProvider;

  Future<AttachmentResponse?> upload(FormData data) async {
    final res = await apiProvider.upload(ApiConstants.uploadImage, data);
    if (res.statusCode == 200) {
      return AttachmentResponse.fromJson(res.body);
    }
  }
}