import 'package:eplusflutter/core/file_util.dart';
import 'package:flutter/material.dart';
import 'package:eplusflutter/core/icon_constants.dart';
import 'package:eplusflutter/core/text_app_style.dart';
import 'package:eplusflutter/widget/text_customize/TextCustomize.dart';
import '../../routes/app_pages.dart';
import '../../widget/vms_text_field/vms_text_field.dart';
import 'package:get/get.dart';
import 'auth_controller.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthController authController = Get.find();

  final _focusNodes = List.generate(2, (_) => FocusNode());

  FocusNode get passwordFocusNode => _focusNodes[0];

  FocusNode get usernameFocusNode => _focusNodes[1];

  bool isUsernameEntered = false;
  bool isPasswordEntered = false;
  String usernameEntered = '';
  String passwordEntered = '';
  bool isValidated = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imgLogo,
                ),
                TextCustomize(
                  title: 'our creativity works for you',
                  textStyle: textStyleApp.italic(
                      size: 20, colorText: Colors.lightGreen),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  _buildUserNameWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildPasswordWidget(),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.REGISTER);
                    },
                    child: TextCustomize(
                      title: 'register account',
                      textStyle: textStyleApp.medium(
                          size: 18, colorText: Colors.lightGreen),
                    ),
                  ),
                  _buildLoginWidget(),
                ],
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }

  Widget _buildUserNameWidget() {
    return VmsTextField(
      key: authController.userNameState,
      focusNode: usernameFocusNode,
      hint: "username",
      nextFocusNode: passwordFocusNode,
      onTextChanged: (textChanged) {
        isUsernameEntered = textChanged?.isNotEmpty == true;
        _shouldEnableLoginButton();
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
        _shouldEnableLoginButton();
      },
      onSubmit: (_) {
        authController.login();
      },
      fontSize: 35,
      autoFocus: false,
    );
  }

  _buildLoginWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: ButtonTheme(
        minWidth: double.infinity,
        height: 55,
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: Colors.lightGreen,
          onPressed: () {
            authController.login();
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => HomePage(),
            //   ),
            // );
          },
          child: TextCustomize(
            title: 'Login',
            textStyle: textStyleApp.medium(size: 20),
          ),
        ),
      ),
    );
  }

  void _shouldEnableLoginButton() {
    bool isEnableButton = isPasswordEntered && isUsernameEntered;
    setState(() {
      isValidated = isEnableButton;
    });
  }
}
