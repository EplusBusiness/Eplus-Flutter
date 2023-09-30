import 'dart:typed_data';

import 'package:eplusflutter/core/icon_constants.dart';
import 'package:eplusflutter/src/user_detail/user_detail.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../core/color_constant.dart';
import '../../core/text_app_style.dart';
import '../../widget/text_customize/TextCustomize.dart';

class UserDetailScreen extends StatefulWidget {
  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> with RouteAware {
  final UserDetailController userDetailController = Get.find();
  ImagePicker picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    userDetailController.getUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.navigate_before, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
        backgroundColor: colorYellow,
        title: TextCustomize(
          title: 'Thông tin cá nhân',
          textStyle: textStyleApp.semiBold(size: 22, colorText: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: GetBuilder<UserDetailController>(
          builder: (controller) {
            bool isHasAvatar = (controller.state.userInfo?.avatar_url != null);
            return Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => _showModelSheet(),
                        child: SizedBox(
                          height: 120,
                          width: 120,
                          child: isHasAvatar
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(60),
                                  child: Image.network(
                                    controller.state.userInfo?.avatar_url ?? '',
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.fill,
                                  ),
                                )
                              : Image.asset(
                                  icUser,
                                ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: TextCustomize(
                            title: 'Ảnh đại diện',
                            textStyle: textStyleApp.semiBold(size: 15)),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    _buildRow(
                        'Họ và tên: ', controller.state.userInfo?.name ?? ''),
                    _buildRow('Số điện thoại: ',
                        controller.state.userInfo?.phone_number ?? ''),
                    _buildRow(
                        'Email: ', controller.state.userInfo?.email ?? ''),
                  ],
                ),
                Column(
                  children: [
                    _buildUpdateButton(),
                    _buildLogOutButton(),
                    _buildRemoveButton(),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildRow(String title, String data) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          TextCustomize(
              title: title, textStyle: textStyleApp.semiBold(size: 15)),
          TextCustomize(title: data, textStyle: textStyleApp.regular(size: 15)),
        ],
      ),
    );
  }

  void _showModelSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      builder: (builder) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          height: 150,
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  _takePhoto();
                },
                child: TextCustomize(
                  title: "take photo",
                  textStyle: textStyleApp.medium(
                      size: 20, colorText: Colors.blueAccent),
                ),
              ),
              const Divider(
                height: 3,
              ),
              TextButton(
                onPressed: () {
                  _getFromGallery();
                },
                child: TextCustomize(
                  title: "photo from gallery",
                  textStyle: textStyleApp.medium(
                      size: 20, colorText: Colors.blueAccent),
                ),
              ),
              const Divider(
                height: 3,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: TextCustomize(
                  title: "cancel",
                  textStyle: textStyleApp.medium(
                      size: 20, colorText: Colors.redAccent),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  _getFromGallery() async {
    if(!kIsWeb) {
      Navigator.pop(context);
    }
    XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 400,
      maxHeight: 400,
      imageQuality: 75,
    );
    if (image != null) {
      _uploadFile(await image.readAsBytes(), image);
    }
  }

  _takePhoto() async {
    Navigator.pop(context);
    final XFile? photo = await picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 400,
      maxHeight: 400,
      imageQuality: 75,
    );
    if (photo == null) {
      return;
    }
    _uploadFile(await photo.readAsBytes(), photo);
  }

  _uploadFile(Uint8List? data, XFile photo) {
    String nameFile = photo.name;
    String mimeType = _getMimeType(photo);
    FormData form = FormData({
      'file': MultipartFile(data, filename: nameFile, contentType: mimeType),
    });

    userDetailController.uploadImage(form);
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

  _buildRemoveButton() {
    return GetBuilder<UserDetailController>(
      builder: (controller) {
        return Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 50),
          child: ButtonTheme(
            minWidth: double.infinity,
            height: 50,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: Colors.red,
              onPressed: () {
                controller.removeUser();
              },
              child: TextCustomize(
                title: 'Xóa account',
                textStyle:
                    textStyleApp.medium(size: 18, colorText: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }

  _buildLogOutButton() {
    return GetBuilder<UserDetailController>(
      builder: (controller) {
        return Padding(
          padding:
          const EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 50),
          child: ButtonTheme(
            minWidth: double.infinity,
            height: 50,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: Colors.red,
              onPressed: () {
                controller.logOut();
              },
              child: TextCustomize(
                title: 'Log out',
                textStyle:
                textStyleApp.medium(size: 18, colorText: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }

  _buildUpdateButton() {
    return GetBuilder<UserDetailController>(
      builder: (controller) {
        return Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 0, right: 0, bottom: 10),
          child: ButtonTheme(
            minWidth: double.infinity,
            height: 50,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: colorYellow.withBlue(120),
              onPressed: () {
                controller.updateUser();
              },
              child: TextCustomize(
                title: 'Cập nhật thông tin',
                textStyle: textStyleApp.medium(size: 18),
              ),
            ),
          ),
        );
      },
    );
  }
}
