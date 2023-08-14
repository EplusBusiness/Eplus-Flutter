import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:eplusflutter/api/api.dart';
import 'package:eplusflutter/widget/text_textfield/text_field_list_product.dart';
import 'package:eplusflutter/widget/text_textfield/text_textfield.dart';
import 'package:flutter/material.dart';
import 'package:eplusflutter/core/icon_constants.dart';
import 'package:eplusflutter/core/string_constant.dart';
import 'package:eplusflutter/core/text_app_style.dart';
import 'package:eplusflutter/src/form/create_form.dart';
import 'package:eplusflutter/src/form/create_form_state.dart';
import 'package:eplusflutter/widget/text_customize/TextCustomize.dart';
import 'package:image_picker/image_picker.dart';
import '../../widget/customize_navigation_bar/customize_navigation_bar.dart';
import '../../widget/dropdown_customize/drop_down_button_customize.dart';
import '../../widget/icon_textfield/icon_textfield.dart';
import 'package:get/get.dart';
import 'dart:io';

class CreateFormScreen extends StatefulWidget {
  @override
  State<CreateFormScreen> createState() => _CreateFormScreenState();
}

class _CreateFormScreenState extends State<CreateFormScreen> {
  CreateFormController controller = Get.find();
  final _focusNodes = List.generate(10, (_) => FocusNode());

  FocusNode get nameFormFocusNode => _focusNodes[0];

  FocusNode get companySenderFocusNode => _focusNodes[1];

  FocusNode get companyAddressSenderFocusNode => _focusNodes[2];

  FocusNode get phoneNumberSenderFocusNode => _focusNodes[3];

  FocusNode get actorSenderFocusNode => _focusNodes[4];

  FocusNode get companyReceiverFocusNode => _focusNodes[5];

  FocusNode get companyAddressReceiverFocusNode => _focusNodes[6];

  FocusNode get phoneNumberReceiverFocusNode => _focusNodes[7];

  FocusNode get actorReceiverFocusNode => _focusNodes[8];

  FocusNode get cccdReceiverFocusNode => _focusNodes[9];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Get.arguments != null) {
      controller.onChangedIsNew(isNew: Get.arguments[1]);
    }
    controller.getItems();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    Get.delete<CreateFormController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          _buildNavigation(),
          _buildBody(),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }

  _buildBody() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: [
                      _buildDropDownTypeDocuments(),
                      _buildNameFile(),
                      _buildSender(),
                      _buildReceiver(),
                      _buildListItemsContent(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildNavigation() {
    return CustomizeNavigationBar(
      onNextPressed: () {
        FocusScope.of(context).unfocus();
        controller.transferDataToNextScreen(context);
      },
      onPreviousPressed: () {
        Get.back();
      },
      isVisiblePlusButton: false,
      isVisibleNextButton: true,
      title: 'Form',
    );
  }

  _buildHeader(String title, {bool enableAdd = false}) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TextCustomize(
              title: title,
              textStyle: textStyleApp.semiBold(size: 18),
            ),
          ),
          Visibility(
            visible: enableAdd,
            child: GetBuilder<CreateFormController>(
              builder: (controller) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: TextButton(
                    onPressed: () {
                      const ProductInfo product = ProductInfo(stock: '0');
                      controller.addItems(productInfo: product);
                    },
                    child: TextCustomize(
                      title: addItemHeaderString,
                      textStyle: textStyleApp.light(size: 15),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  _buildNameFile() {
    return Row(
      children: [
        _buildHeader(nameFormString),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: GetBuilder<CreateFormController>(
            builder: (controller) {
              return TextTxtfield(
                focusNode: nameFormFocusNode,
                nextFocusNode: companySenderFocusNode,
                hintString: nameFormHintString,
                text: controller.state.nameForm,
                onChanged: (value) {
                  controller.onChangeProperties(nameForm: value);
                },
              );
            },
          ),
        )
      ],
    );
  }

  _buildSenderContent() {
    return GetBuilder<CreateFormController>(
      builder: (controller) {
        return Column(
          children: [
            IconTextField(
              focusNode: companySenderFocusNode,
              nextFocusNode: companyAddressSenderFocusNode,
              text: controller.state.senderInfo.name ?? '',
              onChanged: (p0) {
                controller.onChangedSenderData(name: p0);
              },
              icon: icCompany,
              hintString: companyHintString,
            ),
            IconTextField(
              focusNode: companyAddressSenderFocusNode,
              nextFocusNode: phoneNumberSenderFocusNode,
              text: controller.state.senderInfo.address ?? '',
              icon: icLocation,
              hintString: addressHintString,
              onChanged: (p0) {
                controller.onChangedSenderData(address: p0);
              },
            ),
            IconTextField(
              focusNode: phoneNumberSenderFocusNode,
              nextFocusNode: actorSenderFocusNode,
              isNumber: true,
              text: controller.state.senderInfo.phone ?? '',
              icon: icCall,
              hintString: phoneHintString,
              onChanged: (p0) {
                controller.onChangedSenderData(phone: p0);
              },
            ),
            IconTextField(
              focusNode: actorSenderFocusNode,
              nextFocusNode: companyReceiverFocusNode,
              text: controller.state.senderInfo.actor ?? '',
              icon: icUserYellow,
              hintString: actorHintString,
              onChanged: (p0) {
                controller.onChangedSenderData(actor: p0);
              },
            )
          ],
        );
      },
    );
  }

  _buildReceiverContent() {
    return GetBuilder<CreateFormController>(
      builder: (controller) {
        return Column(
          children: [
            IconTextField(
              focusNode: companyReceiverFocusNode,
              nextFocusNode: companyAddressReceiverFocusNode,
              text: controller.state.receiverInfo.name ?? '',
              icon: icCompany,
              hintString: companyHintString,
              onChanged: (p0) {
                controller.onChangedReceiverData(name: p0);
              },
            ),
            IconTextField(
              focusNode: companyAddressReceiverFocusNode,
              nextFocusNode: phoneNumberReceiverFocusNode,
              text: controller.state.receiverInfo.address ?? '',
              icon: icLocation,
              hintString: addressHintString,
              onChanged: (p0) {
                controller.onChangedReceiverData(address: p0);
              },
            ),
            IconTextField(
              focusNode: phoneNumberReceiverFocusNode,
              nextFocusNode: actorReceiverFocusNode,
              isNumber: true,
              text: controller.state.receiverInfo.phone ?? '',
              icon: icCall,
              hintString: phoneHintString,
              onChanged: (p0) {
                controller.onChangedReceiverData(phone: p0);
              },
            ),
            IconTextField(
              focusNode: actorReceiverFocusNode,
              nextFocusNode: cccdReceiverFocusNode,
              text: controller.state.receiverInfo.actor ?? '',
              icon: icUserYellow,
              hintString: actorHintString,
              onChanged: (p0) {
                controller.onChangedReceiverData(actor: p0);
              },
            ),
            IconTextField(
              focusNode: cccdReceiverFocusNode,
              text: controller.state.receiverInfo.cmnd ?? '',
              icon: icPassport,
              hintString: cccdHintString,
              onChanged: (p0) {
                controller.onChangedReceiverData(cmnd: p0);
              },
            ),
            _buildTakePhotoConfirm(context),
          ],
        );
      },
    );
  }

  _buildTakePhotoConfirm(BuildContext context) {
    return GetBuilder<CreateFormController>(
      builder: (controller) {
        Size size = MediaQuery.of(context).size;
        double itemHeight = (size.width - (20 * 2)) / 4;
        return SizedBox(
          height: itemHeight,
          child: GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            padding: const EdgeInsets.only(top: 0),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: controller.state.listCmnd.map(
              (e) {
                return !(e.path != null)
                    ? GestureDetector(
                        onTap: () {
                          _buildBottomSheetV2(context, e);
                        },
                        child: Image.asset(
                          icAddImage,
                          height: itemHeight,
                          width: itemHeight,
                          scale: 1.5,
                        ),
                      )
                    : Stack(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: SizedBox(
                              width: itemHeight,
                              height: itemHeight,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(e.path ?? '',
                                    fit: BoxFit.fitHeight),
                              ),
                            ),
                          ),
                          Positioned(
                            top: -15,
                            right: -10,
                            child: IconButton(
                              onPressed: () {
                                // controller.onChangeRemoveImage(e);
                                controller.onChangeRemoveImages(e);
                              },
                              icon: Image.asset(
                                icDelete,
                                height: 20,
                                width: 20,
                              ),
                            ),
                          )
                        ],
                      );
              },
            ).toList(),
          ),
        );
      },
    );
  }

  _buildSender() {
    return Column(
      children: [
        _buildHeader(senderString),
        _buildSenderContent(),
      ],
    );
  }

  _buildReceiver() {
    return Column(
      children: [
        _buildHeader(receiverString),
        _buildReceiverContent(),
      ],
    );
  }

  _buildDropDownTypeDocuments() {
    return Row(
      children: [
        _buildHeader(typeFormString),
        const SizedBox(
          width: 20,
        ),
        DropdownButton(
          value: 'IN',
          items: [
            //add items in the dropdown
            DropdownMenuItem(
                child: TextCustomize(
                  title: 'IN',
                  textStyle: textStyleApp.medium(size: 15),
                ),
                value: "IN"),
            DropdownMenuItem(
                child: TextCustomize(
                  title: 'OUT',
                  textStyle: textStyleApp.medium(size: 15),
                ),
                value: "OUT"),
          ],
          onChanged: (value) {
            controller.onChangeProperties(type: value ?? '');
          },
        ),
      ],
    );
  }

  _buildListItemsContent() {
    return Column(
      children: [
        _buildHeader(listItemString, enableAdd: true),
        const SizedBox(
          height: 10,
        ),
        _buildList(),
      ],
    );
  }

  _buildList() {
    return GetBuilder<CreateFormController>(
      builder: (controller) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: controller.state.listProduct.length,
          padding: const EdgeInsets.only(top: 0),
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) => _buildItem(index),
        );
      },
    );
  }

  _buildItem(int index) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Colors.grey.shade400, width: 1)),
            child: GetBuilder<CreateFormController>(
              builder: (controller) {
                ItemInfo? item = controller.state.listProduct[index].itemInfo;
                return Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: (item?.attachment?.path != null)
                            ? Image.network(item?.attachment?.path ?? '')
                            : Image.asset(
                                icDefaultImage,
                                fit: BoxFit.fitWidth,
                              ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              width: 1,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            DropDownButtonCustomize<ItemInfo>(
                              displayString: (ItemInfo item) => item.name ?? '',
                              selectedItem:
                                  controller.state.listProduct[index].itemInfo,
                              listItems: controller.state.listItems,
                              hint: 'Chọn sản phẩm',
                              onSelected: (value) {
                                final isExist =
                                    controller.checkExistItem(value);
                                if (!isExist) {
                                  controller.updateItems(
                                      index: index, item: value);
                                } else {
                                  handleToast('Sản phẩm đã tồn tại!');
                                }
                              },
                            ),
                            const Divider(
                              height: 2,
                              color: Colors.grey,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: TextCustomize(
                                      title: controller.state.listProduct[index]
                                              .itemInfo?.unit ??
                                          'Unit',
                                      textStyle: textStyleApp.medium(
                                          size: 15,
                                          colorText: (controller
                                                      .state
                                                      .listProduct[index]
                                                      .itemInfo
                                                      ?.unit !=
                                                  null)
                                              ? Colors.black
                                              : Colors.grey.shade400),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        left: BorderSide(
                                          width: 1.5,
                                          color: Colors.grey.shade300,
                                        ),
                                      ),
                                    ),
                                    child: TextFieldProductTxtfield(
                                      text: controller
                                              .state.listProduct[index].stock ??
                                          'Stock',
                                      hintString: storageHintString,
                                      isNumber: true,
                                      onChanged: (p0) {
                                        controller.updateItems(
                                            stock: p0, index: index);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              height: 5,
                              color: Colors.grey,
                            ),
                            DropDownButtonCustomize<String>(
                              displayString: (String? option) =>
                                  option.toString(),
                              selectedItem:
                                  controller.state.listProduct[index].note,
                              listItems: controller.listOptions,
                              hint: 'Hiện trạng',
                              onSelected: (value) {
                                int indexOption =
                                    controller.listOptions.indexOf(value!);
                                controller.updateItems(
                                    index: index,
                                    note: value,
                                    indexOption: indexOption);
                              },
                            ),
                            Visibility(
                              visible: (controller.state.listProduct[index]
                                      .indexOptionSelected ==
                                  4),
                              child: const Divider(
                                height: 5,
                                color: Colors.grey,
                              ),
                            ),
                            Visibility(
                              visible: (controller.state.listProduct[index]
                                      .indexOptionSelected ==
                                  4),
                              child: TextFieldProductTxtfield(
                                text: controller.state.listProduct[index]
                                        .noteWithOptions ??
                                    '',
                                hintString: 'Note',
                                onChanged: (p0) {
                                  controller.updateItems(
                                      noteWithOption: p0, index: index);
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        Positioned(
          top: -15,
          right: -15,
          child: IconButton(
              onPressed: () {
                controller.removeItems(index: index);
              },
              icon: const Icon(Icons.clear)),
        )
      ],
    );
  }

  _buildBottomSheetV2(BuildContext context, AttachmentInfo attachmentInfo) {
    return showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
            title: 'take photo',
            textStyle:
                textStyleApp.medium(size: 20, colorText: Colors.blueAccent),
            onPressed: () {
              Navigator.of(context).pop();
              _takePhoto(attachmentInfo);
            }),
        BottomSheetAction(
            title: 'photo from gallery',
            textStyle:
                textStyleApp.medium(size: 20, colorText: Colors.blueAccent),
            onPressed: () {
              Navigator.of(context).pop();
              _getFromGallery(attachmentInfo);
            }),
      ],
      cancelAction: CancelAction(
          title:
              'Cancel'), // onPressed parameter is optional by default will dismiss the ActionSheet
    );
  }

  _getFromGallery(AttachmentInfo attachmentInfo) async {
    XFile? image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 400,
      maxHeight: 400,
      imageQuality: 75,
    );
    if (image != null) {
      _uploadImage(image, attachmentInfo);
    }
    // List<PickedFile>? listImages = await picker.getMultiImage(imageQuality: 40);
    // if (listImages.isNotEmpty) {
    //   List<FormData> listForms = listImages.map((e) {
    //     File file = File(e!.path);
    //     String nameFile = e.name;
    //     String mimeType = _getMimeType(e);
    //     FormData form = FormData({
    //       'file':
    //           MultipartFile(file, filename: nameFile, contentType: mimeType),
    //     });
    //     return form;
    //   }).toList();
    //   controller.uploadListImages(listForms);
    // }
  }

  _takePhoto(AttachmentInfo attachmentInfo) async {
    final XFile? photo = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 400,
      maxHeight: 400,
      imageQuality: 75,
    );
    if (photo == null) {
      return;
    }
    _uploadImage(photo, attachmentInfo);
  }

  _uploadImage(XFile photo, AttachmentInfo attachmentInfo) {
    File file = File(photo.path);
    String nameFile = photo.name;
    String mimeType = _getMimeType(photo);
    FormData form = FormData({
      'file': MultipartFile(file,
          filename: 'cmnd_' + nameFile, contentType: mimeType),
    });

    controller.uploadFile(form, attachmentInfo);
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
}
