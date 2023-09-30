import 'package:eplusflutter/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:eplusflutter/core/icon_constants.dart';
import 'package:eplusflutter/src/menu_item.dart';
import 'package:get/get.dart';
import '../../core/color_constant.dart';

class MenuScreen extends StatefulWidget {

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorBackgroundMenuBar,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 80),
          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 15),
          //   height: 60,
          //   decoration: BoxDecoration(
          //     color: Colors.transparent,
          //     borderRadius: BorderRadius.circular(30),
          //     border: Border.all(
          //       color: Colors.grey,
          //       width: 1.5,
          //     ),
          //   ),
          //   child: Row(
          //     children: [
          //       CircleAvatar(),
          //       Expanded(
          //           child: Center(
          //               child: TextCustomize(
          //                 title: 'Bao Uyen',
          //                 textStyle: textStyleApp.semiBold(size: 20, colorText: Colors.white),
          //               ),
          //           ),
          //       ),
          //     ],
          //   ),
          // ),
          // const SizedBox(
          //   height: 5,
          // ),
          SizedBox(
            height: 20.0,
            child: Center(
              child: Container(
                margin: const EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                height: 3.0,
                color: Colors.white,
              ),
            ),
          ),
          MenuItem(icon: icUser, title: 'Information', onTap: () => navigateToUserInfo(),),
          // MenuItem(icon: icLogOut, title: 'Log out', onTap: () {  },),
        ],
      ),
    );
  }

  void navigateToUserInfo() {
    Get.toNamed(Routes.USERDETAIL);
  }
}
