import 'package:eplusflutter/core/string_constant.dart';
import 'package:eplusflutter/src/form_storage/form_storage.dart';
import 'package:eplusflutter/src/form_storage/form_storage_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/color_constant.dart';
import '../../core/date_util.dart';
import '../../core/icon_constants.dart';
import '../../core/text_app_style.dart';
import '../../widget/customize_navigation_bar/customize_navigation_bar.dart';
import '../../widget/text_customize/TextCustomize.dart';

class FormStorageScreen extends StatefulWidget {
  const FormStorageScreen({Key? key});

  @override
  State<FormStorageScreen> createState() => _FormStorageScreenState();
}

class _FormStorageScreenState extends State<FormStorageScreen> {
  FormStorageController controller = Get.find();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getAllForms();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    Get.delete<FormStorageController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildNavigation(),
        _buildSegment(),
        _buildBody(),
        const SizedBox(
          height: 24,
        )
      ],
    );
  }

  _buildNavigation() {
    return CustomizeNavigationBar(
      onNextPressed: () {},
      onPreviousPressed: () {
        Get.back();
      },
      onSearchPressed: () {
        controller.navigateToSearch();
      },
      onEditPressed: () {},
      isVisibleOptions: false,
      isVisibleSearch: true,
      title: 'Forms',
    );
  }

  _buildBody() {
    return Expanded(
      child: GetBuilder<FormStorageController>(
        builder: (controller) {
          return GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                childAspectRatio: 2 / 2.5,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15),
            itemCount: controller.state.isIn
                ? controller.state.formsInData.length
                : controller.state.formsOutData.length,
            itemBuilder: (BuildContext ctx, index) {
              final FormInfoData model = controller.state.isIn
                  ? controller.state.formsInData[index]
                  : controller.state.formsOutData[index];

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
          controller.navigateToEditItem(model.id.toString());
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

  _buildSegment() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInButton('Nhận'),
            const SizedBox(
              width: 20,
            ),
            _buildOutButton('Giao'),
          ],
        ),
      ),
    );
  }

  _buildInButton(String title) {
    return GetBuilder<FormStorageController>(
      builder: (controller) {
        return Expanded(
          child: ButtonTheme(
            minWidth: double.infinity,
            height: 50,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: controller.state.isIn
                  ? colorYellow.withBlue(120)
                  : Colors.grey.shade300,
              onPressed: () {
                controller.onChangedSegment(true);
              },
              child: TextCustomize(
                title: title,
                textStyle: textStyleApp.medium(size: 18),
              ),
            ),
          ),
        );
      },
    );
  }

  _buildOutButton(String title) {
    return GetBuilder<FormStorageController>(
      builder: (controller) {
        return Expanded(
          child: ButtonTheme(
            minWidth: double.infinity,
            height: 50,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: !controller.state.isIn
                  ? colorYellow.withBlue(120)
                  : Colors.grey.shade300,
              onPressed: () {
                controller.onChangedSegment(false);
              },
              child: TextCustomize(
                title: title,
                textStyle: textStyleApp.medium(size: 18),
              ),
            ),
          ),
        );
      },
    );
  }
}
