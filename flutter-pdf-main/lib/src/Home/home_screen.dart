import 'package:flutter/material.dart';
import 'package:makepdfs/core/icon_constants.dart';
import 'package:makepdfs/core/shared_references.dart';
import 'package:makepdfs/models/models/folder_model.dart';
import 'package:makepdfs/models/request/insert_folder_request.dart';
import 'package:makepdfs/src/Home/home.dart';
import 'package:makepdfs/src/Home/home_state.dart';
import 'package:makepdfs/widget/search_bar/search_bar.dart';
import '../../core/color_constant.dart';
import '../../core/string_constant.dart';
import '../../core/text_app_style.dart';
import '../../models/models/user_model.dart';
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
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildBody(context);
  }

  _buildBody(BuildContext context) {
    return Column(
      children: [
        _buildTopBar(),
        _buildSearchBox(),
        _buildListFolder(),
        _buildListRecent(),
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
          _buildHeaderSection(myFolderString),
          Expanded(
            child: GetBuilder<HomeController>(
              builder: (controller) {
                return ListView.builder(
                    itemCount: controller.state.listFolder.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      final FolderInfo model =
                          controller.state.listFolder[index];
                      return _buildCell(model);
                    });
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
            _buildHeaderSection(recentFileString),
            Expanded(
              child: GetBuilder<HomeController>(
                builder: (controller) {
                  return SizedBox(
                    child: ListView.builder(
                        itemCount: controller.state.listFolder.length,
                        padding: const EdgeInsets.only(top: 0),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          final FolderInfo model =
                              controller.state.listFolder[index];
                          return _buildCellRecent(model);
                        }),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildHeaderSection(String title) {
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
                visible: controller.state.listFolder.isNotEmpty,
                child: SizedBox(
                  width: 85,
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
    return Container(
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
            title: (model.size ?? 0).toString(),
            textStyle: textStyleApp.semiBold(size: 14),
          ),
        ],
      ),
    );
  }

  _buildCellRecent(FolderInfo model) {
    return SizedBox(
      height: 110,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              icTech,
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
                      title: model.name ?? '',
                      textStyle: textStyleApp.bold(size: 15)),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        TextCustomize(
                            title: '12/01/2021',
                            textStyle: textStyleApp.semiBold(
                                size: 10, colorText: Colors.black26)),
                        TextCustomize(
                            title: '\t\t\t-\t\t\t',
                            textStyle: textStyleApp.semiBold(
                                size: 10, colorText: Colors.black26)),
                        TextCustomize(
                            title: '12:21 PM',
                            textStyle: textStyleApp.semiBold(
                                size: 10, colorText: Colors.black26)),
                      ],
                    ),
                  ),
                  Expanded(
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
                                    size: 15, colorText: colorYellow))
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
                                    size: 15, colorText: colorYellow))
                          ],
                        ),
                      ],
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
                hintText: 'Enter your name folder',
            ),
            onChanged: (value) {
              createFolder = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () async {
                final InsertFolderRequest data = InsertFolderRequest(name: createFolder, parentCategoryId: null);
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
