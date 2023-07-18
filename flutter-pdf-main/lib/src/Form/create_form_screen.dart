import 'package:flutter/material.dart';
import 'package:makepdfs/core/icon_constants.dart';
import 'package:makepdfs/core/string_constant.dart';
import 'package:makepdfs/core/text_app_style.dart';
import 'package:makepdfs/src/Form/create_form.dart';
import 'package:makepdfs/src/Form/create_form_state.dart';
import 'package:makepdfs/widget/text_customize/TextCustomize.dart';

import '../../widget/customize_navigation_bar/customize_navigation_bar.dart';
import '../../widget/dropdown_customize/drop_down_button_customize.dart';
import '../../widget/icon_textfield/icon_textfield.dart';
import '../../widget/text_textfield/text_textfield.dart';
import 'package:get/get.dart';

class CreateFormScreen extends StatelessWidget {
  const CreateFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildNavigation(),
        _buildBody(context),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }

  _buildBody(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  _buildDropDownTypeDocuments(),
                  _buildSender(),
                  _buildReceiver(),
                  _buildListItemsContent(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildNavigation() {
    return CustomizeNavigationBar(
      onNextPressed: () {},
      isVisiblePlusButton: false,
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
                textStyle: textStyleApp.bold(size: 18),
              ),
          ),
          Visibility(
            visible: enableAdd,
            child: GetBuilder<CreateFormController>(
              builder: (controller) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey)
                  ),
                  child: TextButton(onPressed: () {
                    const ProductInfo product = ProductInfo(
                                                    name: '', size: '0', cost: 'kl', note: '');
                    controller.addItems(productInfo: product);
                  }, child: TextCustomize(
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

  _buildSenderContent() {
    return GetBuilder<CreateFormController>(
      builder: (controller) {
        return Column(
          children:  [
            IconTextField(
              text: controller.state.senderInfo.name ?? '',
              onChanged: (p0){
                controller.onChangedSenderData(name: p0);
              },
              icon: icCompany,
              hintString: companyHintString,
            ),
            IconTextField(
              text: controller.state.senderInfo.address ?? '',
              icon: icLocation,
              hintString: addressHintString,
              onChanged: (p0) {
                controller.onChangedSenderData(address: p0);
              },
            ),
            IconTextField(
              text: controller.state.senderInfo.phone ?? '',
              icon: icCall,
              hintString: phoneHintString,
              onChanged: (p0){
                controller.onChangedSenderData(phone: p0);
              },
            ),
            IconTextField(
              text: controller.state.senderInfo.actor ?? '',
              icon: icUserYellow,
              hintString: actorHintString,
              onChanged: (p0){
                controller.onChangedSenderData(actor: p0);
              },
            )
          ],
        );
      }
    );
  }

  _buildReceiverContent() {
    return GetBuilder<CreateFormController>(
      builder: (controller) {
        return Column(
          children: [
            IconTextField(
              text: controller.state.receiverInfo.name ?? '',
              icon: icCompany,
              hintString: companyHintString,
              onChanged: (p0) {
                controller.onChangedReceiverData(name: p0);
              },
            ),
            IconTextField(
              text: controller.state.receiverInfo.address ?? '',
              icon: icLocation,
              hintString: addressHintString,
              onChanged: (p0) {
                controller.onChangedReceiverData(address: p0);
              },
            ),
            IconTextField(
              text: controller.state.receiverInfo.phone ?? '',
              icon: icCall,
              hintString: phoneHintString,
              onChanged: (p0) {
                controller.onChangedReceiverData(phone: p0);
              },
            ),
            IconTextField(
              text: controller.state.receiverInfo.actor ?? '',
              icon: icUserYellow,
              hintString: actorHintString,
              onChanged: (p0) {
                controller.onChangedReceiverData(actor: p0);
              },
            ),
            IconTextField(
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
        _buildHeader('Sender'),
        _buildSenderContent(),
      ],
    );
  }

  _buildReceiver() {
    return Column(
      children: [
        _buildHeader('Receiver'),
        _buildReceiverContent(),
      ],
    );
  }

  _buildDropDownTypeDocuments() {
    return Row(
      children: [
        _buildHeader('Type'),
        const SizedBox(
          width: 20,
        ),
        DropdownButton(
          value: 'Receive',
          items: [
            //add items in the dropdown
            DropdownMenuItem(
                child: TextCustomize(
                    title: 'Receive', textStyle: textStyleApp.medium(size: 15),
                ),
                value: "Receive"),
            DropdownMenuItem(
                child: TextCustomize(
                    title: 'Send', textStyle: textStyleApp.medium(size: 15),
                ),
                value: "Send"),
          ],
          onChanged: (value) {
            //get value when changed
            print("You selected $value");
          },
        ),
      ],
    );
  }

  _buildListItemsContent() {
    return Column(
      children: [
        _buildHeader('List item', enableAdd: true),
        const SizedBox(height: 10,),
        _buildList(),
      ],
    );
  }

  _buildList() {
    return GetBuilder<CreateFormController>(
      builder: (controller) {
        return SizedBox(
          height: 500,
          child: ListView.builder(
              itemCount: controller.state.listProduct.length,
              padding: const EdgeInsets.only(top: 0),
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) => _buildItem()
          ),
        );
      },
    );
  }

  _buildItem() {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: Colors.grey.shade400, width: 1)),
          child: Row(
            children: [
              Expanded(
                child: Image.asset(
                  icTech,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          left: BorderSide(
                            width: 1,
                            color: Colors.grey.shade400,
                          )
                      )
                  ),
                  child: Column(
                    children: [
                      const DropDownButtonCustomize(listItems: ['Tivi LCD', 'Máy giặt Xiaomi'], hint: 'Select item',),
                      const Divider(
                        height: 2,
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                      width: 1,
                                      color: Colors.grey.shade400,
                                    )
                                ),
                              ),
                              child: const TextTxtfield(hint: 'Cost',),
                            ),
                          ),
                          const Expanded(
                            flex: 3,
                            child: DropDownButtonCustomize(listItems: ['1', '2', '3'], hint: 'Select size',),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 2,
                        color: Colors.grey,
                      ),
                      const TextTxtfield(hint: 'Note',),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        IconButton(onPressed: () {} , icon: Image.asset(icClearTextField, height: 20, width: 20,))
      ],
    );
  }
}
