import 'package:flutter/material.dart';
import 'package:makepdfs/core/string_constant.dart';
import 'package:makepdfs/core/text_app_style.dart';
import 'package:makepdfs/widget/text_customize/TextCustomize.dart';

import '../../core/icon_constants.dart';
import '../../widget/customize_navigation_bar/customize_navigation_bar.dart';
import 'detail_project.dart';
import 'package:get/get.dart';

class DetailProjectScreen extends StatefulWidget {
  const DetailProjectScreen({
    Key? key,
    this.id = '',
  }) : super(key: key);

  final String id;

  @override
  State<DetailProjectScreen> createState() => _DetailProjectScreenState();
}

class _DetailProjectScreenState extends State<DetailProjectScreen> {
  final DetailProjectController detailFolderController = Get.find();

  @override void initState() {
    // TODO: implement initState
    super.initState();
    // detailFolderController.getFolderInfo(context, widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildNavigation(),
          _buildBody(),
          _buildContent(),
        ],
      ),
    );
  }

  _buildNavigation() {
    return CustomizeNavigationBar(
      onNextPressed: () {

      },
      isVisiblePlusButton: false,
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
      child: Image.asset(icFolder,
        height: 100,
        width: 100,
        fit: BoxFit.fill,
      ),
    );
  }

  _buildHeaderSection() {
    return Container(
      height: 110,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
            child: TextCustomize(
              title: 'Intel',
              textStyle: textStyleApp.bold(size: 28),
            ),
          ),
          SizedBox(
            height: 60,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () { },
                  child: TextCustomize(
                    title: 'Check storage',
                    textStyle: textStyleApp.semiBold(size: 18, colorText: Colors.white),
                  ),
                ),
                const SizedBox(width: 10,),
                ElevatedButton(
                  onPressed: () { },
                  child: TextCustomize(
                    title: 'Add form',
                    textStyle: textStyleApp.semiBold(size: 18, colorText: Colors.white),
                  ),
                ),
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
  }

  _buildContent() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
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
          _buildRowInfo('Kind', 'folder'),
          _buildRowInfo('Size', '30 KB'),
          _buildRowInfo('Created', '00:29 16/02/2023'),
          _buildRowInfo('Modified', '00:29 16/02/2023'),
          _buildRowInfo('Path', 'root/intel/'),
        ],
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
                        textStyle: textStyleApp.regular(size: 14, colorText: Colors.grey),
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
                    textStyle: textStyleApp.medium(size: 14, colorText: Colors.black87),
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
}
