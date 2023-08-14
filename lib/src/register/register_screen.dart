import 'dart:io';

import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:eplusflutter/src/register/register.dart';
import 'package:eplusflutter/widget/register_textfield/register_textfield.dart';
import 'package:eplusflutter/widget/text_textfield/text_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../api/interceptors/response_interceptor.dart';
import '../../core/icon_constants.dart';
import '../../core/text_app_style.dart';
import '../../widget/text_customize/TextCustomize.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  ImagePicker picker = ImagePicker();

  RegisterController registerController = Get.find();

  final _focusNodes = List.generate(5, (_) => FocusNode());

  FocusNode get usernameFocusNode => _focusNodes[0];

  FocusNode get nameFocusNode => _focusNodes[1];

  FocusNode get phoneFocusNode => _focusNodes[2];

  FocusNode get confirmPasswordFocusNode => _focusNodes[3];

  FocusNode get passwordFocusNode => _focusNodes[4];

  @override
  void dispose() {
    // TODO: implement dispose
    Get.delete<RegisterController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.4,
                    child: Align(
                      alignment: Alignment.center,
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
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          _buildUserNameWidget(),
                          _buildNameWidget(),
                          _buildPhoneWidget(),
                          _buildPasswordWidget(),
                          _buildConfirmPasswordWidget(),
                          _buildRegisterWidget(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildBackButton(),
        ],
      ),
    );
  }

  Widget _buildBackButton() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.navigate_before),
          ),
        ],
      ),
    );
  }

  Widget _buildUserNameWidget() {
    return GetBuilder<RegisterController>(
      builder: (controller) {
        return TextTxtfield(
          colorLine: Colors.lightGreen,
          focusNode: usernameFocusNode,
          nextFocusNode: nameFocusNode,
          hintString: 'email',
          text: controller.state.email ?? '',
          onChanged: (value) {
            controller.onChangedAttachment(email: value);
          },
        );
      },
    );
  }

  Widget _buildPhoneWidget() {
    return GetBuilder<RegisterController>(
      builder: (controller) {
        return TextTxtfield(
          colorLine: Colors.lightGreen,
          focusNode: phoneFocusNode,
          nextFocusNode: passwordFocusNode,
          hintString: 'phone number',
          isNumber: true,
          text: controller.state.phone_number ?? '',
          onChanged: (value) {
            controller.onChangedAttachment(phoneNumber: value);
          },
        );
      },
    );
  }

  Widget _buildNameWidget() {
    return GetBuilder<RegisterController>(
      builder: (controller) {
        return TextTxtfield(
          colorLine: Colors.lightGreen,
          focusNode: nameFocusNode,
          nextFocusNode: phoneFocusNode,
          hintString: 'name',
          text: controller.state.name ?? '',
          onChanged: (value) {
            controller.onChangedAttachment(name: value);
          },
        );
      },
    );
  }

  Widget _buildPasswordWidget() {
    return GetBuilder<RegisterController>(
      builder: (controller) {
        return RegisterTxtfield(
          colorLine: Colors.lightGreen,
          focusNode: passwordFocusNode,
          nextFocusNode: confirmPasswordFocusNode,
          hintString: 'password',
          isPassword: true,
          text: controller.state.password ?? '',
          onChanged: (value) {
            controller.onChangedAttachment(password: value);
          },
        );
      },
    );
  }

  Widget _buildConfirmPasswordWidget() {
    return GetBuilder<RegisterController>(
      builder: (controller) {
        return RegisterTxtfield(
          colorLine: Colors.lightGreen,
          focusNode: confirmPasswordFocusNode,
          hintString: 'confirm password',
          isPassword: true,
          text: controller.state.confirmPassword ?? '',
          onChanged: (value) {
            controller.onChangedAttachment(confirmPassword: value);
          },
        );
      },
    );
  }

  _buildRegisterWidget() {
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
            _validateRegister();
          },
          child: TextCustomize(
            title: 'Register account',
            textStyle: textStyleApp.medium(size: 20),
          ),
        ),
      ),
    );
  }

  _buildBottomSheet(BuildContext context) {
    return showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
            title: 'take photo',
            textStyle: textStyleApp.medium(size: 20, colorText: Colors.grey),
            onPressed: () {
              Navigator.of(context).pop();
              _takePhoto();
            }),
        BottomSheetAction(
            title: 'photo from gallery',
            textStyle: textStyleApp.medium(size: 20, colorText: Colors.grey),
            onPressed: () {
              Navigator.of(context).pop();
              _getFromGallery();
            }),
      ],
      cancelAction: CancelAction(
          title:
              'Cancel'), // onPressed parameter is optional by default will dismiss the ActionSheet
    );
  }

  _getFromGallery() async {
    XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 400,
      maxHeight: 400,
      imageQuality: 75,
    );
    if (image != null) {
      _uploadImage(image);
    }
  }

  _takePhoto() async {
    final XFile? photo = await picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 400,
      maxHeight: 400,
      imageQuality: 75,
    );
    if (photo == null) {
      return;
    }
    _uploadImage(photo);
  }

  _uploadImage(XFile photo) {
    File file = File(photo.path);
    String nameFile = photo.name;
    String mimeType = _getMimeType(photo);
    FormData form = FormData({
      'file': MultipartFile(file, filename: nameFile, contentType: mimeType),
    });

    // registerController.uploadFile(form);
  }

  String _getMimeType(XFile photo) {
    if (photo.name.contains('jpg')) {
      return 'image/jpg';
    } else if (photo.name.contains('png')) {
      return 'image/png';
    } else if (photo.name.contains('jpeg')) {
      return 'image/jpeg';
    } else if (photo.name.contains('pdf')) {
      return 'application/pdf';
    }
    return '';
  }

  _validateRegister() {
    if ((registerController.state.name != '' &&
        registerController.state.email != '' &&
        registerController.state.password != '' &&
        registerController.state.phone_number != '' &&
        registerController.state.confirmPassword != '')) {
      registerController.registerAccount();
    } else {
      handleToast('Missing require field!');
    }
  }
}
