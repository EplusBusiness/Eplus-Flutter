import 'package:eplusflutter/models/request/insert_folder_request.dart';
import 'package:flutter/material.dart';
import 'package:eplusflutter/src/detail_folder/detail_folder.dart';
import 'package:get/get.dart';
import '../../core/color_constant.dart';
import '../../core/icon_constants.dart';
import '../../core/string_constant.dart';
import '../../core/text_app_style.dart';
import '../../widget/customize_navigation_bar/customize_navigation_bar.dart';
import '../../widget/text_customize/TextCustomize.dart';
import 'detail_folder_state.dart';

class DetailFolderScreen extends StatefulWidget {
  const DetailFolderScreen({Key? key});

  @override
  State<DetailFolderScreen> createState() => _DetailFolderScreenState();
}

class _DetailFolderScreenState extends State<DetailFolderScreen> {
  final DetailFolderController detailFolderController = Get.find();
  String createProject = '';
  String path = '${Get.arguments[1]}';

  @override void initState() {
    // TODO: implement initState
    super.initState();
    detailFolderController.getFolderInfo();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    Get.delete<DetailFolderController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildNavigation(),
        SizedBox(height: 10,),
        _buildBody(),
        SizedBox(height: 24,)
      ],
    );
  }

  _buildNavigation() {
    return CustomizeNavigationBar(
      onNextPressed: () {
        createFolderAlert();
      },
      onPreviousPressed: () {
        Get.back();
      },
      isVisibleEditButton: false,
      isVisiblePlusButton: true,
      title: 'Folders',
    );
  }

  _buildBody() {
    return Expanded(
      child: GetBuilder<DetailFolderController>(
        builder: (controller) {
          return GridView.builder(
              padding: const EdgeInsets.only(top: 0, left: 15, right: 15),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  childAspectRatio: 2/2.25,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: controller.state.listFolders.length,
              itemBuilder: (BuildContext ctx, index) {
                final DetailFolderInfo model = controller.state.listFolders[index];
                return _buildCell(model);
              },
          );
        },
      ),
    );
  }

  _buildCell(DetailFolderInfo model) {
    final items = model.childCategory?.length;
    final itemString = (items! < 2) ? 'item':'items';
    return GestureDetector(
      onTap: () {
        detailFolderController.navigatorToDetailProject(model);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: colorBackground,
                  ),
                  width: 130,
                  height: 120,
                  child: Image.asset(
                    icFolder,
                    height: 30,
                    width: 30,
                  ),
                ),
                SizedBox(
                  width: 130,
                  height: 120,
                  child: Center(
                    child: TextCustomize(
                      title: 'Project',
                      textStyle: textStyleApp.bold(
                          size: 14, colorText: Colors.deepPurple),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Center(
            child: TextCustomize(
              title: model.name ?? '',
              alignmentText: TextAlign.center,
              textStyle: textStyleApp.bold(size: 16),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Center(
            child: TextCustomize(
              title: '$items $itemString',
              textStyle: textStyleApp.semiBold(size: 14),
            ),
          ),
        ],
      ),
    );
  }

  Future<String?> createFolderAlert() => showDialog<String?>(
    context: context,
    builder: (context) => AlertDialog(
      title: TextCustomize(
        title: createFolderString,
        textStyle: textStyleApp.bold(size: 20),
      ),
      content: TextField(
        autofocus: true,
        decoration: const InputDecoration(
          hintText: enterFolderName,
        ),
        onChanged: (value) {
          createProject = value;
        },
      ),
      actions: [
        TextButton(
          onPressed: () async {
            final InsertFolderRequest data = InsertFolderRequest(name: createProject, parentCategoryId: detailFolderController.categoryId);
            detailFolderController.createProject(data);
            Navigator.of(context).pop();
          },
          child: TextCustomize(
            title: createButtonString,
            textStyle:
            textStyleApp.semiBold(size: 17, colorText: colorYellow),
          ),
        ),
      ],
    ),
  );
}
