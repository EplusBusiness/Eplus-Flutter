import 'dart:io';

import 'package:eplusflutter/core/shared_references.dart';
import 'package:flutter/material.dart';
import 'package:eplusflutter/core/icon_constants.dart';
import 'package:eplusflutter/models/request/insert_folder_request.dart';
import 'package:eplusflutter/src/home/home.dart';
import 'package:eplusflutter/src/home/home_state.dart';
import 'package:eplusflutter/widget/search_bar/search_bar.dart';
import 'package:gallery_saver/files.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import '../../core/color_constant.dart';
import '../../core/string_constant.dart';
import '../../core/text_app_style.dart';
import '../../widget/text_customize/TextCustomize.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController homeController = Get.find();
  String createFolder = '';
  File? fileDownloaded;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.getAllFolders();
    // homeController.getAllFileStorage();
    homeController.getUserInfo();

    // getFileFromUrl("url");
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Image.asset(
            imgLogo,
            width: 100,
            height: 100,
          ),
        ),
        leadingWidth: 120,
        actions: [
          _buildMenuButton(),
        ],
      ),
      body: Column(
        children: [
          // _buildTopBar(),
          _buildSearchBox(),
          _buildHeaderSection(myFolderString, true),
          _buildHorizontalFolder(),
          // _buildListFolder(),
          // _buildListRecent(),
          Container(
            color: Colors.white,
            height: 24,
          )
        ],
      ),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildMenuButton(),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    width: 100,
                    child: Image.asset(
                      imgLogo,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
          )
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
          _buildHeaderSection(myFolderString, true),
          Expanded(
            child: GetBuilder<HomeController>(
              builder: (controller) {
                bool isEmpty = controller.state.listFolders.isEmpty;
                return isEmpty
                    ? Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
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

  _buildHorizontalFolder() {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: GetBuilder<HomeController>(
          builder: (controller) {
            bool isEmpty = controller.state.listFolders.isEmpty;
            return GridView.builder(
              padding:
              const EdgeInsets.only(top: 0, left: 15, right: 15),
              gridDelegate:
              const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  childAspectRatio: 2 / 2.25,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: controller.state.listFolders.length,
              itemBuilder: (BuildContext ctx, index) {
                final FolderInfo model =
                controller.state.listFolders[index];
                return _buildCell(model);
              },
            );
          },
        ),
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
                  return ListView.builder(
                    itemCount: controller.listFileLocal.length,
                    padding: const EdgeInsets.only(top: 0),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      final file = controller.listFileLocal[index];
                      return _buildCellRecent(file);
                    },
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
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
          crossAxisAlignment: CrossAxisAlignment.center,
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
      margin: const EdgeInsets.only(bottom: 20),
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
    return GestureDetector(
      onTap: () => homeController.navigateToUserInfo(),
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 1.5, color: Colors.red)),
        child: Row(
          children: [
            IconButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.white,
              focusColor: Colors.white,
              hoverColor: Colors.white,
              onPressed: () {
                homeController.navigateToUserInfo();
              },
              icon: Image.asset(
                icUser,
                height: 45,
                width: 45,
                color: Colors.lightGreen,
              ),
            ),
            // SizedBox(
            //   width: 130,
            //   child: Center(
            //     child: TextCustomize(
            //         title: 'Information',
            //         textStyle: textStyleApp.semiBold(
            //             size: 20, colorText: Colors.lightGreen)),
            //   ),
            // ),
          ],
        ),
      ),
    );
    return GetBuilder<HomeController>(
      builder: (controller) {
        return GestureDetector(
          onTap: () => controller.navigateToUserInfo(),
          child: Row(
            children: [
              (controller.state.userInfo?.avatar_url != null)
                  ? Image.network(controller.state.userInfo?.avatar_url ?? '')
                  : const Icon(
                      Icons.account_circle_outlined,
                      size: 30,
                      color: Colors.lightGreen,
                    ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextCustomize(
                    title: controller.state.userInfo?.name ?? '',
                    textStyle: textStyleApp.semiBold(
                        size: 20, colorText: Colors.lightGreen)),
              ),
            ],
          ),
        );
      },
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
                final company = await SharedPreferencesUtil.getCompany();
                final InsertFolderRequest data = InsertFolderRequest(
                    name: createFolder, parentCategoryId: null, company: company);
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

  Future<File> getFileFromUrl(String url, {name}) async {
    var fileName = 'pdf';
    if (name != null) {
      fileName = name;
    }
    try {
      var data = await http.get(Uri.parse("http://103.116.8.159:3000/api/category/export/csv/1"), headers: {"Content-type": "text/csv", "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZW1haWwiOiJodXluaDVAc3RhZ2VpdC5hcHAiLCJpYXQiOjE2OTM0NjA0MDgsImV4cCI6MTcyNDk5NjQwOH0.zuCVrVToehB-6JQS47g_yzXu5D0MYJg5A8G8gNEB4EE"});
      var bytes = data.bodyBytes;
      var dir = await getTemporaryDirectory();
      var dirDownload = await getApplicationDocumentsDirectory();
      File file = File("${dirDownload.path}/" + fileName + ".csv");
      fileDownloaded = file;
      File urlFile = await file.writeAsBytes(bytes);
      return urlFile;
    } catch (e) {
      throw Exception("Error opening url file");
    }
  }
}
