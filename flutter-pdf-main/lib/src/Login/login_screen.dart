import 'package:flutter/material.dart';
import 'package:makepdfs/core/icon_constants.dart';
import 'package:makepdfs/core/text_app_style.dart';
import 'package:makepdfs/widget/text_customize/TextCustomize.dart';
import '../../widget/vms_text_field/vms_text_field.dart';

import 'package:get/get.dart';
import 'auth_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthController authController = Get.find();
  final passwordFocusNode = FocusNode();
  bool isUsernameEntered = false;
  bool isPasswordEntered = false;
  String usernameEntered = '';
  String passwordEntered = '';
  bool isValidated = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.15,),
                Image.asset(
                  imgLogo,
                ),
                const SizedBox(
                  height: 40,
                ),
                TextCustomize(title: 'our creativity works for you', textStyle: textStyleApp.italic(size: 20, colorText: Colors.lightGreen)),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildUserNameWidget(),
                    _buildPasswordWidget(),
                    const SizedBox(
                      height: 30,
                    ),
                    _buildLoginWidget(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUserNameWidget() {
    return VmsTextField(
      key: authController.userNameState,
      hint: "username",
      nextFocusNode: passwordFocusNode,
      onTextChanged: (textChanged) {
        isUsernameEntered = textChanged?.isNotEmpty == true;
        _shouldEnableLoginButton(context);
      },
      fontSize: 35,
      autoFocus: false,
    );
  }

  Widget _buildPasswordWidget() {
    return VmsTextField(
      key: authController.passwordState,
      hint: "password",
      isPassword: true,
      focusNode: passwordFocusNode,
      onTextChanged: (textChanged) {
        isPasswordEntered = textChanged?.isNotEmpty == true;
        _shouldEnableLoginButton(context);
      },
      onSubmit: (_) {},
      fontSize: 35,
      autoFocus: false,
    );
  }

  Widget _buildLoginWidget() {
    return TextButton(
      onPressed: isValidated ? () {
        authController.login(context);
      } : null,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(6),
        ),
        height: 60,
        width: double.infinity,
        child: Center(
          child: Text(
            "Login",
            style: textStyleApp.bold(size: 20,colorText: Colors.white),
          ),
        ),
      ),
    );
  }

  void _shouldEnableLoginButton(BuildContext context) {
    bool isEnableButton = isPasswordEntered && isUsernameEntered;
    setState(() {
      isValidated = isEnableButton;
    });
  }
}
