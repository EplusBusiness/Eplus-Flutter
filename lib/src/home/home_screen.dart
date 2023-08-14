import 'package:flutter/material.dart';
import 'package:eplusflutter/core/icon_constants.dart';
import 'package:eplusflutter/models/request/insert_folder_request.dart';
import 'package:eplusflutter/src/home/home.dart';
import 'package:eplusflutter/src/home/home_state.dart';
import 'package:eplusflutter/widget/search_bar/search_bar.dart';
import 'package:share_plus/share_plus.dart';
import '../../core/color_constant.dart';
import '../../core/string_constant.dart';
import '../../core/text_app_style.dart';
import '../../widget/text_customize/TextCustomize.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController homeController = Get.find();
  String createFolder = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.getAllFolders(context);
    homeController.getAllFileStorage();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildBody();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    Get.delete<HomeController>();
    super.dispose();
  }

  _buildBody() {
    return Column(
      children: [
        _buildTopBar(),
        _buildSearchBox(),
        _buildListFolder(),
        _buildListRecent(),
        Container(
          color: Colors.white,
          height: 24,
        )
      ],
    );
  }

  _buildTopBar() {
    return Container(
      color: Colors.white,
      height: 120,
      child: Column(
        children: [
          const SizedBox(
            height: 55,
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                _buildMenuButton(),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 100,
                  child: Image.asset(
                    imgLogo,
                    width: 50,
                    height: 50,
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }

  _buildSearchBox() {
    return SearchBar(
      createFolder: () {
        createFolderAlert();
      },
      onSubmit: (value) {
        homeController.navigateToListSearch(value);
      },
    );
  }

  _buildListFolder() {
    return Container(
      height: 250,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          _buildHeaderSection(myFolderString, true),
          Expanded(
            child: GetBuilder<HomeController>(
              builder: (controller) {
                bool isEmpty = controller.state.listFolders.isEmpty;
                return isEmpty
                    ? Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: colorYellow),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextCustomize(
                                title: 'Empty folder',
                                textStyle: textStyleApp.semiBold(
                                    size: 22, colorText: colorYellow),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                icEmptyFolder,
                                height: 50,
                                width: 50,
                              )
                            ],
                          ),
                        ),
                      )
                    : ListView.builder(
                        itemCount: controller.state.listFolders.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          final FolderInfo model =
                              controller.state.listFolders[index];
                          return _buildCell(model);
                        },
                      );
              },
            ),
          )
        ],
      ),
    );
  }

  _buildListRecent() {
    return Expanded(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            _buildHeaderSection(recentFileString, false),
            Expanded(
              child: GetBuilder<HomeController>(
                builder: (controller) {
                  return Container(
                    child: ListView.builder(
                      itemCount: controller.listFileLocal.length,
                      padding: const EdgeInsets.only(top: 0),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        final file = controller.listFileLocal[index];
                        return _buildCellRecent(file);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildHeaderSection(String title, bool enableSeeAll) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextCustomize(
            title: title,
            textStyle: textStyleApp.bold(size: 18),
          ),
          GetBuilder<HomeController>(
            builder: (controller) {
              return Visibility(
                visible:
                    controller.state.listFolders.isNotEmpty && enableSeeAll,
                child: GestureDetector(
                  onTap: () {
                    controller.navigateToListSearch('');
                  },
                  child: Row(
                    children: [
                      TextCustomize(
                        title: seeAllString,
                        textStyle: textStyleApp.semiBold(
                            size: 15, colorText: colorYellow),
                      ),
                      Image.asset(
                        icNext,
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  _buildCell(FolderInfo model) {
    final childLength = model.childCategory?.length ?? 0;
    final itemString = (childLength < 2) ? 'item' : 'items';
    return GestureDetector(
      onTap: () {
        if (model.creatorId != null) {
          homeController.navigateToDetail(model);
        }
      },
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
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
            const SizedBox(
              height: 12,
            ),
            TextCustomize(
              title: model.name ?? '',
              textStyle: textStyleApp.bold(size: 16),
            ),
            const SizedBox(
              height: 3,
            ),
            TextCustomize(
              title: '$childLength $itemString',
              textStyle: textStyleApp.semiBold(size: 14),
            ),
          ],
        ),
      ),
    );
  }

  _buildCellRecent(XFile file) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              icPdf,
              width: 60,
              height: 60,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextCustomize(
                      title: file.name, textStyle: textStyleApp.bold(size: 15)),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        homeController.actionPrintingAndShare(file);
                      },
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                icPrint,
                                height: 25,
                                width: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              TextCustomize(
                                title: printString,
                                textStyle: textStyleApp.semiBold(
                                    size: 15, colorText: colorYellow),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                icShare,
                                height: 25,
                                width: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              TextCustomize(
                                title: shareString,
                                textStyle: textStyleApp.semiBold(
                                    size: 15, colorText: colorYellow),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildMenuButton() {
    return IconButton(
      highlightColor: Colors.transparent,
      splashColor: Colors.white,
      focusColor: Colors.white,
      hoverColor: Colors.white,
      onPressed: () {
        ZoomDrawer.of(context)!.toggle();
      },
      icon: Image.asset(
        icMenu,
        height: 35,
        width: 35,
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
              createFolder = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () async {
                final InsertFolderRequest data = InsertFolderRequest(
                    name: createFolder, parentCategoryId: null);
                homeController.createFolder(context, data);
              },
              child: TextCustomize(
                title: 'Create',
                textStyle:
                    textStyleApp.semiBold(size: 17, colorText: colorYellow),
              ),
            ),
          ],
        ),
      );
}
