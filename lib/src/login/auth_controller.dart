import 'package:get/get.dart';
import 'package:eplusflutter/api/api.dart';
import 'package:flutter/material.dart';
import 'package:eplusflutter/core/shared_references.dart';
import 'package:eplusflutter/routes/app_pages.dart';
import '../../models/request/login_request.dart';
import '../../widget/vms_text_field/vms_text_field.dart';

class AuthController extends GetxController {
  AuthController(this.apiAuthRepository);
  final ApiAuthRepository apiAuthRepository;
  final GlobalKey<MyVmsTextFieldState> userNameState =
  GlobalKey<MyVmsTextFieldState>();
  final GlobalKey<MyVmsTextFieldState> passwordState =
  GlobalKey<MyVmsTextFieldState>();


  void login() async {
    final loginRequest = LoginRequest(
        email: userNameState.currentState?.getText().toLowerCase(),
        password: passwordState.currentState?.getText()
    );

    final res = await apiAuthRepository.login(loginRequest);

    if (res?.access_token.isNotEmpty == true) {
      final user = res?.user;
      SharedPreferencesUtil.saveToken(res?.access_token ?? '');
      SharedPreferencesUtil.saveUserId(user!.id.toString());
      SharedPreferencesUtil.saveUserName(user.name ?? '');
      SharedPreferencesUtil.saveCompany(user.company ?? '');
      Get.toNamed(Routes.HOME);
    }
  }
}