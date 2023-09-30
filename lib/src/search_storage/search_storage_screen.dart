import 'package:eplusflutter/widget/search_bar/search_bar.dart';
import 'package:flutter/material.dart';
import '../../core/color_constant.dart';
import '../../core/date_util.dart';
import '../../core/icon_constants.dart';
import '../../core/string_constant.dart';
import '../../core/text_app_style.dart';
import '../../widget/customize_navigation_bar/customize_navigation_bar.dart';
import '../../widget/text_customize/TextCustomize.dart';
import 'search_storage.dart';
import 'package:get/get.dart';

class SearchStorageScreen extends StatefulWidget {
  const SearchStorageScreen({super.key});

  @override
  State<SearchStorageScreen> createState() => _SearchStorageScreenState();
}

class _SearchStorageScreenState extends State<SearchStorageScreen> {
  SearchStorageController controller = Get.find();

  @override
  void initState() {
    super.initState();
    controller.getStateSearch();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchStorageController>(
      builder: (controller) {
        return Column(
          children: [
            _buildNavigation(),
            SearchBar(
              createFolder: () {},
              onSubmit: (value) {
                controller.getData(value);
              },
              isVisibleCreate: false,
            ),
            controller.state.isForm ? _buildBody() : _buildListBuilder(),
          ],
        );
      },
    );
  }

  _buildNavigation() {
    return CustomizeNavigationBar(
      onNextPressed: () {},
      onPreviousPressed: () {
        Get.back();
      },
      title: 'Search',
    );
  }

  _buildBody() {
    return Expanded(
      child: GetBuilder<SearchStorageController>(
        builder: (controller) {
          return GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                childAspectRatio: 2 / 2.5,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15),
            itemCount: controller.state.formsSearch.length,
            itemBuilder: (BuildContext ctx, index) {
              final FormInfoData model = controller.state.formsSearch[index];
              return _buildCell(model);
            },
          );
        },
      ),
    );
  }

  _buildCell(FormInfoData model) {
    String createdDate = DateUtil.getDateTime(model.createdAt ?? '');
    String updatedDate = DateUtil.getDateTime(model.updatedAt ?? '');
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: colorYellow, width: 2)),
      child: GestureDetector(
        onTap: () {
          controller.navigateToEditForm(model.id.toString());
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.transparent,
                ),
                width: 130,
                height: 120,
                child: Image.asset(
                  icDocument,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextCustomize(
                  title: nameFormString,
                  alignmentText: TextAlign.center,
                  textStyle: textStyleApp.semiBold(
                      size: 10, colorText: Colors.grey.shade500),
                ),
                Expanded(
                  child: TextCustomize(
                    title: model.nameForm ?? '',
                    overflow: TextOverflow.visible,
                    alignmentText: TextAlign.left,
                    textStyle: textStyleApp.bold(size: 10),
                  ),
                ),
              ],
            ),
            // Row(
            //   children: [
            //     TextCustomize(
            //       title: statusFormString,
            //       alignmentText: TextAlign.center,
            //       textStyle: textStyleApp.semiBold(
            //           size: 10, colorText: Colors.grey.shade500),
            //     ),
            //     TextCustomize(
            //       title: (model.status ?? '').toUpperCase(),
            //       alignmentText: TextAlign.center,
            //       textStyle: textStyleApp.bold(
            //           size: 10,
            //           colorText: model.status == "PENDING"
            //               ? Colors.redAccent
            //               : Colors.black),
            //     ),
            //   ],
            // ),
            Row(
              children: [
                TextCustomize(
                  title: typeFormString,
                  alignmentText: TextAlign.center,
                  textStyle: textStyleApp.semiBold(
                      size: 10, colorText: Colors.grey.shade500),
                ),
                TextCustomize(
                  title: ((model.type ?? '').toUpperCase() == "IN")
                      ? "Nhận"
                      : "Giao",
                  alignmentText: TextAlign.center,
                  textStyle: textStyleApp.bold(
                      size: 10,
                      colorText: model.status == "IN"
                          ? Colors.redAccent
                          : Colors.lightGreen),
                ),
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            TextCustomize(
                title: 'Created $createdDate',
                overflow: TextOverflow.ellipsis,
                textStyle: textStyleApp.regular(
                  size: 8,
                  colorText: Colors.grey.shade500,
                )),
            TextCustomize(
              title: 'Updated $updatedDate',
              overflow: TextOverflow.ellipsis,
              textStyle: textStyleApp.regular(
                  size: 8, colorText: Colors.grey.shade500),
            ),
          ],
        ),
      ),
    );
  }

  _buildListBuilder() {
    return Expanded(
      child: GetBuilder<SearchStorageController>(
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 24),
            child: ListView.builder(
              itemCount: controller.state.listSearch.length,
              padding: const EdgeInsets.only(top: 10),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                ItemInfo model = controller.state.listSearch[index];
                return _buildCellItem(model);
              },
            ),
          );
        },
      ),
    );
  }

  _buildCellItem(ItemInfo model) {
    String createdDate = DateUtil.getDateTime(model.createdAt ?? '');
    String updatedDate = DateUtil.getDateTime(model.updatedAt ?? '');
    Size size = MediaQuery.of(context).size;
    return GetBuilder<SearchStorageController>(
      builder: (controller) {
        return GestureDetector(
          onTap: () {
            controller.navigateToEditItem(model.id.toString());
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
                    Container(
                      width: size.width * 0.3,
                      padding: const EdgeInsets.only(left: 0, right: 6),
                      child: (model.attachment?.path != null)
                          ? ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12.0),
                                  bottomLeft: Radius.circular(12.0)),
                              child: Image.network(model.attachment?.path ?? '',
                                  height: 120,
                                  width: 120,
                                  fit: BoxFit.fitWidth),
                            )
                          : Image.asset(
                              icDefaultImage,
                              width: 120,
                              height: 120,
                              fit: BoxFit.fill,
                            ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                            child: TextCustomize(
                                overflow: TextOverflow.ellipsis,
                                title: model.name ?? '',
                                textStyle: textStyleApp.bold(size: 18)),
                          ),
                          Row(
                            children: [
                              TextCustomize(
                                  title: quantityHintString,
                                  textStyle: textStyleApp.bold(
                                      size: 14,
                                      colorText: Colors.grey.shade700)),
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
                            ),
                          ),
                          TextCustomize(
                            title: 'Updated $updatedDate',
                            overflow: TextOverflow.ellipsis,
                            textStyle: textStyleApp.regular(
                                size: 11, colorText: Colors.grey.shade500),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
