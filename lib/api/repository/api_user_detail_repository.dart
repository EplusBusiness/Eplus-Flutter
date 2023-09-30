import 'dart:async';
import 'package:eplusflutter/api/provider/api_user_detail_provider.dart';
import 'package:get/get.dart';
import '../../models/response/attachment_response.dart';
import '../../src/user_detail/user_detail_state.dart';
import '../api.dart';

class ApiUserDetailRepository {
  ApiUserDetailRepository({required this.apiProvider});

  final ApiUserDetailProvider apiProvider;

  Future<UserInfo?> getUserInfo() async {
    final res = await apiProvider.getUserInfo(ApiConstants.userDetail);
    if (res.statusCode == 200) {
      return UserInfo.fromJson(res.body);
    }
  }

  Future<UserInfo?> updateUserInfo(UserInfo data) async {
    final res = await apiProvider.updateUserInfo(ApiConstants.updateUser, data);
    if (res.statusCode == 200) {
      return UserInfo.fromJson(res.body);
    }
  }

  Future<UserInfo?> removeUser() async {
    final res = await apiProvider.removeUser(ApiConstants.userDetail);
    if (res.statusCode == 200) {
      return UserInfo.fromJson(res.body);
    }
  }

  Future<AttachmentResponse?> upload(FormData data) async {
    final res = await apiProvider.upload(ApiConstants.uploadImage, data);
    if (res.statusCode == 200) {
      return AttachmentResponse.fromJson(res.body);
    }
  }
}