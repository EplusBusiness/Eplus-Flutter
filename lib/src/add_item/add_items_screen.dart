import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/color_constant.dart';
import '../../core/icon_constants.dart';
import '../../core/string_constant.dart';
import '../../core/text_app_style.dart';
import '../../widget/customize_navigation_bar/customize_navigation_bar.dart';
import '../../widget/icon_textfield/icon_textfield.dart';
import '../../widget/text_customize/TextCustomize.dart';
import 'package:image_picker/image_picker.dart';
import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'dart:io';

import 'add_items.dart';

class AddItemsScreen extends StatefulWidget {
  const AddItemsScreen({Key? key});

  @override
  State<AddItemsScreen> createState() => _AddItemsScreenState();
}

class _AddItemsScreenState extends State<AddItemsScreen> {
  ImagePicker picker = ImagePicker();
  AddItemsController controller = Get.find();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    Get.delete<AddItemsController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildNavigation(),
        _buildBody(),
      ],
    );
  }

  _buildNavigation() {
    return CustomizeNavigationBar(
      onNextPressed: () {},
      onPreviousPressed: () {
        Get.back();
      },
      isVisiblePlusButton: false,
      isVisibleEditButton: false,
      title: addItemString,
    );
  }

  _buildBody() {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                _buildInput(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildInput() {
    return Column(
      children: [
        _buildHeader(informationString),
        _buildSenderContent(),
      ],
    );
  }

  _buildSenderContent() {
    return GetBuilder<AddItemsController>(builder: (controller) {
      return Column(
        children: [
          IconTextField(
            text: controller.state.itemInfo.name ?? '',
            icon: icItemName,
            hintString: nameItemHintString,
            onChanged: (p0) {
              controller.onChangedItemData(name: p0);
            },
          ),
          IconTextField(
            text: controller.state.itemInfo.unit ?? '',
            icon: icUnit,
            hintString: unitHintString,
            onChanged: (p0) {
              controller.onChangedItemData(unit: p0);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: TextCustomize(
                    title: addImageString,
                    textStyle: textStyleApp.bold(size: 15))),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                _buildBottomSheet();
              },
              child: controller.state.attachment.path == null
                  ? Image.asset(
                      icAddImage,
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitHeight,
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        controller.state.attachment.path ?? '',
                        height: 100,
                        width: 100,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ButtonTheme(
              minWidth: double.infinity,
              height: 50,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: colorYellow.withBlue(120),
                onPressed: () {
                  controller.createItem();
                },
                child: TextCustomize(
                  title: addItemString,
                  textStyle: textStyleApp.semiBold(size: 16),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }

  _buildHeader(String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TextCustomize(
              title: title,
              textStyle: textStyleApp.bold(size: 18),
            ),
          ),
        ],
      ),
    );
  }

  _getFromGallery() async {
    Navigator.pop(context);
    XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 400,
      maxHeight: 400,
      imageQuality: 75,
    );
    if (image != null) {
      _uploadFile(image);
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
    _uploadFile(photo);
  }

  _uploadFile(XFile photo) {
    File file = File(photo.path);
    String nameFile = photo.name;
    String mimeType = _getMimeType(photo);
    FormData form = FormData({
      'file': MultipartFile(file, filename: nameFile, contentType: mimeType),
    });

    controller.uploadImage(form);
  }

  String _getMimeType(XFile photo) {
    if (photo.name.contains('jpg')) {
      return 'image/jpg';
    } else if (photo.name.contains('png')) {
      return 'image/png';
    } else if (photo.name.contains('jpeg')) {
      return 'image/jpeg';
    }
    return '';
  }

  _buildBottomSheet() {
    FocusScope.of(context).unfocus();
    return showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
            title: 'take photo',
            textStyle:
            textStyleApp.medium(size: 20, colorText: Colors.blueAccent),
            onPressed: () {
              _takePhoto();
            }),
        BottomSheetAction(
            title: 'photo from gallery',
            textStyle:
            textStyleApp.medium(size: 20, colorText: Colors.blueAccent),
            onPressed: () {
              _getFromGallery();
            }),
      ],
      cancelAction: CancelAction(
          title:
              'Cancel'), // onPressed parameter is optional by default will dismiss the ActionSheet
    );
  }
}
