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

import 'edit_items.dart';

class EditItemsScreen extends StatefulWidget {
  const EditItemsScreen({Key? key});

  @override
  State<EditItemsScreen> createState() => _EditItemsScreenState();
}

class _EditItemsScreenState extends State<EditItemsScreen> {
  ImagePicker picker = ImagePicker();
  EditItemsController controller = Get.find();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getItemInfo(Get.arguments[0]);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    Get.delete<EditItemsController>();
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
      onEditPressed: () {
        deleteItemAlert();
      },
      isVisiblePlusButton: false,
      isVisibleEditButton: false,
      isVisibleDeleteButton: true,
      title: 'Edit items',
    );
  }

  _buildBody() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
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
    return GetBuilder<EditItemsController>(builder: (controller) {
      return Column(
        children: [
          IconTextField(
            text: controller.state.item.name ?? '',
            icon: icItemName,
            hintString: nameItemHintString,
            onChanged: (p0) {
              controller.onChangedItemData(name: p0);
            },
          ),
          IconTextField(
            enable: false,
            isNumber: true,
            text: (controller.state.item.stock ?? '0').toString(),
            icon: icStorage,
            hintString: storageHintString,
            onChanged: (p0) {
              controller.onChangedItemData(stock: int.parse(p0));
            },
          ),
          IconTextField(
            enable: false,
            text: controller.state.item.unit ?? '',
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
                title: imageString,
                textStyle: textStyleApp.bold(size: 15),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                _buildBottomSheet();
              },
              child: controller.state.attachment.path == null
                  ? Image.asset(
                      icDefaultImage,
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
          SizedBox(
            child: Row(
              children: [
                // controller.state.itemInfo.attachments.first.path == '' ? Image.asset(icDefaultImage, height: 50, width: 50, fit: BoxFit.fitHeight,) : Image.file(File(controller.state.attachment.path ?? ''), height: 50, width: 50, fit: BoxFit.fitHeight,),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    _buildBottomSheet();
                  },
                  child: TextCustomize(
                    title: (controller.state.attachment.nameFile != '')
                        ? (controller.state.attachment.nameFile ?? '')
                        : 'tap to input image',
                    textStyle: textStyleApp.medium(
                      size: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          ButtonTheme(
            minWidth: double.infinity,
            height: 50,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: colorYellow.withBlue(120),
              onPressed: () {
                controller.editItem();
              },
              child: TextCustomize(
              title: 'Edit item',
              textStyle: textStyleApp.medium(size: 18),
            ),
            ),
          ),
        ],
      );
    });
  }

  _buildHeader(String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
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

    controller.uploadImage(form, photo.path);
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
    return showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
            title: 'take photo',
            textStyle: textStyleApp.semiBold(size: 20, colorText: Colors.grey),
            onPressed: () {
              _takePhoto();
            }),
        BottomSheetAction(
            title: 'photo from gallery',
            textStyle: textStyleApp.semiBold(size: 20, colorText: Colors.grey),
            onPressed: () {
              _getFromGallery();
            }),
      ],
      cancelAction: CancelAction(
          title:
              'Cancel'), // onPressed parameter is optional by default will dismiss the ActionSheet
    );
  }

  void deleteItemAlert() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: TextCustomize(
            title: deleteItemString,
            textStyle: textStyleApp.bold(size: 20),
          ),
          content: TextCustomize(
              title: questionAlertDeleteItem,
              textStyle: textStyleApp.semiBold(size: 18)),
          actions: [
            TextButton(
              onPressed: () async {
                controller.deleteItem();
                Navigator.of(context).pop();
              },
              child: TextCustomize(
                title: deleteButtonString,
                textStyle:
                    textStyleApp.semiBold(size: 17, colorText: colorYellow),
              ),
            ),
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
              },
              child: TextCustomize(
                title: cancelButtonString,
                textStyle:
                    textStyleApp.semiBold(size: 17, colorText: Colors.black),
              ),
            ),
          ],
        ),
      );
}
