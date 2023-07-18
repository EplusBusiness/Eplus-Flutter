import 'package:flutter/material.dart';
import 'package:makepdfs/src/DetailFolder/detail_folder.dart';
import 'package:get/get.dart';
import '../../core/color_constant.dart';
import '../../core/icon_constants.dart';
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

      },
      isVisiblePlusButton: true,
      title: 'Projects',
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
              itemCount: controller.state.listFolder.length,
              itemBuilder: (BuildContext ctx, index) {
                final FolderInfo model = controller.state.listFolder[index];
                return _buildCell(model);
              },
          );
        },
      ),
    );
  }

  _buildCell(FolderInfo model) {
    return GestureDetector(
      onTap: () {
        // Detail project with model
        detailFolderController.navigatorToDetailProject(model.id ?? '');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Container(
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
              title: (model.size ?? 0).toString(),
              textStyle: textStyleApp.semiBold(size: 14),
            ),
          ),
        ],
      ),
    );
  }
}
