import 'dart:async';
import 'package:eplusflutter/src/register/register_state.dart';
import 'package:get/get.dart';
import '../../models/models/user_model.dart';
import '../../models/request/register_request.dart';
import '../api.dart';
import '../provider/api_register_provider.dart';

class ApiRegisterRepository {
  ApiRegisterRepository({required this.apiProvider});

  final ApiRegisterProvider apiProvider;

  Future<UserModel?> register(RegisterRequest req) async {
    final res = await apiProvider.registerAccount(
        ApiConstants.register, req);

    if (res.statusCode == 200) {
      return UserModel.fromJson(res.body);
    }
  }

  Future<AttachmentAvatar?> upload(FormData data) async {
    final res = await apiProvider.upload(ApiConstants.uploadImage, data);
    if (res.statusCode == 200) {
      return AttachmentAvatar.fromJson(res.body);
    }
  }
}