import 'package:eplusflutter/api/api.dart';
import 'package:eplusflutter/src/edit_form/edit_form.dart';
import 'package:eplusflutter/src/edit_form/edit_form_state.dart';
import 'package:eplusflutter/widget/text_textfield/text_field_list_product.dart';
import 'package:eplusflutter/widget/text_textfield/text_textfield.dart';
import 'package:flutter/material.dart';
import 'package:eplusflutter/core/icon_constants.dart';
import 'package:eplusflutter/core/string_constant.dart';
import 'package:eplusflutter/core/text_app_style.dart';
import 'package:eplusflutter/widget/text_customize/TextCustomize.dart';
import '../../widget/customize_navigation_bar/customize_navigation_bar.dart';
import '../../widget/icon_textfield/icon_textfield.dart';
import 'package:get/get.dart';

import '../image_view_screen/image_screen.dart';

class EditFormScreen extends StatefulWidget {
  @override
  State<EditFormScreen> createState() => _EditFormScreenState();
}

class _EditFormScreenState extends State<EditFormScreen> {
  EditFormController controller = Get.find();
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
      controller.onChangedIsNew(isNew: false);
    }
    controller.getFormInfo();
    controller.getItems();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    Get.delete<EditFormController>();
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
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    _buildDropDownTypeDocuments(),
                    _buildNameFile(),
                    _buildDatePicker(),
                    _buildSender(),
                    _buildReceiver(),
                    _buildPhotoConfirm(context),
                    _buildListItemsContent(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildDatePicker() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          _buildHeader('Ngày tháng:'),
          const SizedBox(
            width: 20,
          ),
          GetBuilder<EditFormController>(
            builder: (controller) {
              return TextCustomize(
                title: controller.state.formData.dateSent ?? '',
                textStyle: textStyleApp.regular(
                    size: 18,
                    colorText: Colors.black),
              );
            },
          ),
        ],
      ),
    );
  }

  _buildNavigation() {
    return CustomizeNavigationBar(
      onNextPressed: () {
        controller.changeReqToInvoice(context);
      },
      onPreviousPressed: () {
        Get.back();
      },
      title: 'Form detail',
      isVisibleOptions: false,
      isVisibleNext: true,
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
              textStyle: textStyleApp.bold(size: 18),
            ),
          ),
          Visibility(
            visible: enableAdd,
            child: GetBuilder<EditFormController>(
              builder: (controller) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: TextButton(
                    onPressed: () {
                      const ProductInfo product =
                          ProductInfo(stock: '0', note: '');
                      controller.addItems(productInfo: product);
                    },
                    child: TextCustomize(
                      title: '+ Item',
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
          child: GetBuilder<EditFormController>(
            builder: (controller) {
              return TextTxtfield(
                enable: false,
                focusNode: nameFormFocusNode,
                nextFocusNode: companySenderFocusNode,
                hintString: 'name form',
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
    return GetBuilder<EditFormController>(
      builder: (controller) {
        return Column(
          children: [
            IconTextField(
              enable: false,
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
              enable: false,
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
              enable: false,
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
              enable: false,
              focusNode: actorSenderFocusNode,
              nextFocusNode: companyReceiverFocusNode,
              text: controller.state.senderInfo.actor ?? '',
              icon: icUserYellow,
              hintString: actorHintString,
              onChanged: (p0) {
                controller.onChangedSenderData(actor: p0);
              },
            ),
          ],
        );
      },
    );
  }

  _buildPhotoConfirm(BuildContext context) {
    return GetBuilder<EditFormController>(
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
            children: controller.state.attachmentsCmnd!.map(
              (e) {
                return !(e.path != null)
                    ? Image.asset(
                        icDefaultImage,
                        height: itemHeight,
                        width: itemHeight,
                        scale: 1.5,
                      )
                    : Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              List<String?> imageString = [];
                              imageString = controller.state.attachmentsCmnd!
                                  .map((e) => e.path)
                                  .toList();
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (builder) => ImageViewScreen(
                                    images: imageString,
                                  ),
                                ),
                              );
                            },
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
                        ],
                      );
              },
            ).toList(),
          ),
        );
      },
    );
  }

  _buildReceiverContent() {
    return GetBuilder<EditFormController>(
      builder: (controller) {
        return Column(
          children: [
            IconTextField(
              enable: false,
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
              enable: false,
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
              enable: false,
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
              enable: false,
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
              enable: false,
              focusNode: cccdReceiverFocusNode,
              text: controller.state.receiverInfo.cmnd ?? '',
              icon: icPassport,
              hintString: cccdHintString,
              onChanged: (p0) {
                controller.onChangedReceiverData(cmnd: p0);
              },
            )
          ],
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
        GetBuilder<EditFormController>(
          builder: (controller) {
            return TextCustomize(
              title: (controller.state.formData.type == 'IN') ? 'Nhận':'Giao',
              textStyle: textStyleApp.medium(size: 17),
            );
          },
        ),
      ],
    );
  }

  _buildListItemsContent() {
    return Column(
      children: [
        _buildHeader(listItemString, enableAdd: false),
        const SizedBox(
          height: 10,
        ),
        _buildList(),
      ],
    );
  }

  _buildList() {
    return GetBuilder<EditFormController>(
      builder: (controller) {
        return SizedBox(
          height: controller.state.listProduct.length * 200,
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.state.listProduct.length,
              padding: const EdgeInsets.only(top: 0),
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) =>
                  _buildItem(index)),
        );
      },
    );
  }

  _buildItem(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: Colors.grey.shade400, width: 1)),
      child: GetBuilder<EditFormController>(
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
                      // DropDownButtonCustomize<ItemInfo>(
                      //   displayString: (ItemInfo item) => item.name ?? '',
                      //   selectedItem: item,
                      //   listItems: controller.state.listItems,
                      //   hint: 'Select item',
                      //   onSelected: (value) {
                      //     final isExist =
                      //         controller.checkExistItem(value);
                      //     if (!isExist) {
                      //       controller.updateItems(
                      //           index: index, item: value);
                      //     } else {
                      //       handleToast('Item was exist!');
                      //     }
                      //   },
                      // ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 50,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TextCustomize(
                            title: item?.name ?? '',
                            textStyle: textStyleApp.semiBold(size: 15),
                          ),
                        ),
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
                                title: item?.unit ?? 'Unit',
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
                                  right: BorderSide(
                                    width: 1,
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              child: TextFieldProductTxtfield(
                                enable: false,
                                text:
                                    controller.state.listProduct[index].stock ??
                                        'Stock',
                                hintString: storageHintString,
                                isNumber: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 5,
                        color: Colors.grey,
                      ),
                      TextFieldProductTxtfield(
                        enable: false,
                        text: controller.state.listProduct[index].note ?? '',
                        hintString: 'Note',
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
