import 'package:eplusflutter/src/user_detail/user_detail.dart';
import 'package:flutter/material.dart';
import 'package:eplusflutter/src/Storage/storage.dart';
import 'package:eplusflutter/widget/customize_navigation_bar/customize_navigation_bar.dart';
import 'package:get/get.dart';

class UserDetailScreen extends StatefulWidget {
  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> with RouteAware {
  final UserDetailController userDetailController = Get.find();

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildNavigation(),
      ],
    );
  }

  _buildNavigation() {
    return CustomizeNavigationBar(
      onNextPressed: () {
      },
      onPreviousPressed: () {
        Get.back();
      },
      title: 'Storage',
      isVisibleEditButton: false,
      isVisiblePlusButton: false,
    );
  }

}
