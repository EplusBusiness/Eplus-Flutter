import 'package:eplusflutter/src/search/list_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/color_constant.dart';
import '../../core/icon_constants.dart';
import '../../core/text_app_style.dart';
import '../../widget/customize_navigation_bar/customize_navigation_bar.dart';
import '../../widget/text_customize/TextCustomize.dart';


class ListSearchScreen extends StatefulWidget {
  const ListSearchScreen({Key? key});

  @override
  State<ListSearchScreen> createState() => _ListSearchScreenState();
}

class _ListSearchScreenState extends State<ListSearchScreen> {
  final ListSearchController listSearchController = Get.find();
  final searchData = Get.arguments[0];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (searchData != '') {
      listSearchController.getListSearch( Get.arguments[0]);
    }else {
      listSearchController.getAllFolder();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildNavigation(),
        SizedBox(
          height: 10,
        ),
        _buildBody(),
        SizedBox(
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
      title: (searchData == '') ? 'All folder' : 'Search',
      isVisibleOptions: false,
    );
  }

  _buildBody() {
    return Expanded(
      child: GetBuilder<ListSearchController>(
        builder: (controller) {
          return GridView.builder(
            padding: const EdgeInsets.only(top: 0, left: 15, right: 15),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                childAspectRatio: 2 / 2.25,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: controller.state.listFolders.length,
            itemBuilder: (BuildContext ctx, index) {
              final FolderInfo model = controller.state.listFolders[index];
              return _buildCell(model);
            },
          );
        },
      ),
    );
  }

  _buildCell(FolderInfo model) {
    final categoryId = model.parentCategoryId;
    final isProject = categoryId != null;
    final items = model.childCategory?.length;
    final itemString = (items! < 2) ? 'item':'items';
    return GestureDetector(
      onTap: () {
        listSearchController.navigatorToDetailFolder(model);
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
                Visibility(
                  visible: isProject,
                  child: SizedBox(
                    width: 130,
                    height: 120,
                    child: Center(
                      child: TextCustomize(
                        title: 'Project',
                        textStyle: textStyleApp.bold(
                            size: 14, colorText: Colors.deepPurple),
                      ),
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
}
