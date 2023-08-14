import 'package:eplusflutter/core/date_util.dart';
import 'package:flutter/material.dart';
import 'package:eplusflutter/core/color_constant.dart';
import 'package:eplusflutter/core/icon_constants.dart';
import 'package:eplusflutter/core/text_app_style.dart';
import 'package:eplusflutter/src/Storage/storage.dart';
import 'package:eplusflutter/src/Storage/storage_state.dart';
import 'package:eplusflutter/widget/customize_navigation_bar/customize_navigation_bar.dart';
import 'package:eplusflutter/widget/text_customize/TextCustomize.dart';
import 'package:get/get.dart';
import '../../core/string_constant.dart';

class StorageScreen extends StatefulWidget {
  @override
  State<StorageScreen> createState() => _StorageScreenState();
}

class _StorageScreenState extends State<StorageScreen> with RouteAware {
  final StorageController storageController = Get.find();
  String? categoryId;

  @override
  void initState() {
    super.initState();
    if (Get.arguments[0] != null) {
      categoryId = Get.arguments[0];
      storageController.getAllItems(categoryId!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildNavigation(),
        _buildListBuilder(),
      ],
    );
  }

  _buildNavigation() {
    return CustomizeNavigationBar(
      onNextPressed: () {
        storageController.navigateToAddItem(Get.arguments[0].toString());
      },
      onPreviousPressed: () {
        Get.back();
      },
      title: 'Storage',
      isVisibleEditButton: false,
      isVisiblePlusButton: true,
    );
  }

  _buildListBuilder() {
    return Expanded(
      child: GetBuilder<StorageController>(
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 24),
            child: ListView.builder(
              itemCount: controller.state.listItems.length,
              padding: const EdgeInsets.only(top: 10),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                final data = controller.state.listItems[index];
                return _buildCell(data);
              },
            ),
          );
        },
      ),
    );
  }

  _buildCell(ItemInfo model) {
    String createdDate = DateUtil.getDateTime(model.createdAt ?? '');
    String updatedDate = DateUtil.getDateTime(model.updatedAt ?? '');
    return GestureDetector(
      onTap: () {
        storageController.navigateToEditItem(model.id.toString());
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2.0, color: colorYellow),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 6),
                  child: (model.attachment?.path != null)
                      ? ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              bottomLeft: Radius.circular(12.0)),
                          child: Image.network(model.attachment?.path ?? '',
                              height: 120, width: 120, fit: BoxFit.fitWidth),
                        )
                      : Image.asset(
                          icDefaultImage,
                          width: 120,
                          height: 120,
                          fit: BoxFit.fitWidth,
                        ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                          child: Expanded(
                            child: TextCustomize(
                                title: model.name ?? '',
                                textStyle: textStyleApp.bold(size: 18)),
                          ),
                        ),
                        Row(
                          children: [
                            TextCustomize(
                                title: quantityHintString,
                                textStyle: textStyleApp.bold(
                                    size: 14, colorText: Colors.grey.shade700)),
                            TextCustomize(
                              title:
                                  '${(model.stock ?? 0).toString()} ${model.unit}',
                              textStyle: textStyleApp.medium(
                                  size: 14, colorText: Colors.grey.shade700),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextCustomize(
                            title: 'Created $createdDate',
                            overflow: TextOverflow.ellipsis,
                            textStyle: textStyleApp.regular(
                              size: 11,
                              colorText: Colors.grey.shade500,
                            )),
                        TextCustomize(
                            title: 'Updated $updatedDate',
                            overflow: TextOverflow.ellipsis,
                            textStyle: textStyleApp.regular(
                                size: 11, colorText: Colors.grey.shade500)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
