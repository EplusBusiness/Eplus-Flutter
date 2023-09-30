import 'package:flutter/material.dart';
import 'package:eplusflutter/core/string_constant.dart';
import 'package:eplusflutter/core/text_app_style.dart';
import 'package:eplusflutter/widget/text_customize/TextCustomize.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/color_constant.dart';
import '../../core/icon_constants.dart';
import '../../widget/customize_navigation_bar/customize_navigation_bar.dart';
import 'detail_project.dart';
import 'package:get/get.dart';

class DetailProjectScreen extends StatefulWidget {
  const DetailProjectScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailProjectScreen> createState() => _DetailProjectScreenState();
}

class _DetailProjectScreenState extends State<DetailProjectScreen> {
  final DetailProjectController detailProjectController = Get.find();
  String editName = '';
  String path = '${Get.arguments[1]}/';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    detailProjectController.getFolderInfo(Get.arguments[0]);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    Get.delete<DetailProjectController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildNavigation(),
        _buildBodyContent(),
      ],
    );
  }

  _buildBodyContent() {
    return Expanded(
        child: SingleChildScrollView(
      child: Column(
        children: [
          _buildBody(),
          _buildContent(),
        ],
      ),
    ));
  }

  _buildNavigation() {
    return CustomizeNavigationBar(
      onNextPressed: () {},
      onPreviousPressed: () {
        Get.back(result: detailProjectController.state.isEdited);
      },
      onEditPressed: () {
        editProjectAlert();
      },
      onDeletePressed: () {
        deleteProjectAlert();
      },
      isVisibleOptions: true,
      isVisibleAdd: false,
      title: 'My Project',
    );
  }

  _buildBody() {
    return Column(
      children: [
        _buildImageFolder(),
        _buildHeaderSection(),
      ],
    );
  }

  _buildImageFolder() {
    return SizedBox(
      height: 200,
      width: 200,
      child: Image.asset(
        icFolder,
        height: 100,
        width: 100,
        fit: BoxFit.fill,
      ),
    );
  }

  _buildHeaderSection() {
    return GetBuilder<DetailProjectController>(
      builder: (controller) {
        return Container(
          height: 170,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: TextCustomize(
                  title: controller.state.folder.name ?? '',
                  textStyle: textStyleApp.bold(size: 28),
                ),
              ),
              SizedBox(
                height: 60,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        controller.navigatorToStorage(Get.arguments[0]);
                      },
                      child: TextCustomize(
                        title: 'Check storage',
                        textStyle: textStyleApp.semiBold(
                            size: 18, colorText: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.navigatorToFormsStorage(Get.arguments[0]);
                      },
                      child: TextCustomize(
                        title: 'Check forms',
                        textStyle: textStyleApp.semiBold(
                            size: 18, colorText: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        controller
                            .navigatorToAddForm(Get.arguments[0].toString());

                      },
                      child: TextCustomize(
                        title: 'Add form',
                        textStyle: textStyleApp.semiBold(
                            size: 18, colorText: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    // SizedBox(
                    //   height: 60,
                    //   child: Row(
                    //     children: [
                    //       ElevatedButton(
                    //         onPressed: () {
                    //           // controller.navigatorToAddForm(Get.arguments[0].toString());
                    //         },
                    //         child: TextCustomize(
                    //           title: 'Export Excel',
                    //           textStyle: textStyleApp.semiBold(
                    //               size: 18, colorText: Colors.white),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
                child: Divider(
                  color: Colors.grey.shade400,
                  thickness: 1.5,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  _buildContent() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GetBuilder<DetailProjectController>(
        builder: (controller) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextCustomize(
                    title: informationString,
                    textStyle: textStyleApp.bold(size: 20),
                  ),
                ),
              ),
              _buildRowInfo('Kind', 'Project'),
              _buildRowInfo(createdString, controller.state.createdDate),
              _buildRowInfo(modifiedString, controller.state.updatedDate),
              // _buildRowInfo(pathString, '${Get.arguments[1]}'),
            ],
          );
        },
      ),
    );
  }

  _buildRowInfo(String header, String content) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 30,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextCustomize(
                    title: header,
                    textStyle:
                        textStyleApp.regular(size: 14, colorText: Colors.grey),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: SizedBox(
                height: 30,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextCustomize(
                    title: content,
                    textStyle: textStyleApp.medium(
                        size: 14, colorText: Colors.black87),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
          child: Divider(
            color: Colors.grey.shade300,
            thickness: 1.0,
          ),
        ),
      ],
    );
  }

  Future<String?> editProjectAlert() => showDialog<String?>(
        context: context,
        builder: (context) => AlertDialog(
          title: TextCustomize(
            title: editProjectString,
            textStyle: textStyleApp.bold(size: 20),
          ),
          content: TextField(
            autofocus: true,
            decoration: const InputDecoration(
              hintText: enterEditProjectName,
            ),
            onChanged: (value) {
              editName = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                detailProjectController.onChangeName(editName);
                Navigator.of(context).pop();
              },
              child: TextCustomize(
                title: 'Edit',
                textStyle:
                    textStyleApp.semiBold(size: 17, colorText: colorYellow),
              ),
            ),
          ],
        ),
      );

  Future<String?> deleteProjectAlert() => showDialog<String?>(
        context: context,
        builder: (context) => AlertDialog(
          title: TextCustomize(
            title: deleteProjectString,
            textStyle: textStyleApp.bold(size: 20),
          ),
          content: TextCustomize(
            title: contentDeleteProjectString,
            textStyle: textStyleApp.medium(size: 20),
          ),
          actions: [
            TextButton(
              onPressed: () {
                detailProjectController.deleteProject();
                Navigator.of(context).pop();
              },
              child: TextCustomize(
                title: 'Xóa',
                textStyle:
                    textStyleApp.semiBold(size: 17, colorText: colorYellow),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: TextCustomize(
                title: 'Hủy',
                textStyle:
                    textStyleApp.semiBold(size: 17, colorText: Colors.grey),
              ),
            ),
          ],
        ),
      );
}
