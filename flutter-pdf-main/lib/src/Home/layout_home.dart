import 'package:flutter/material.dart';
import 'package:makepdfs/src/Home/drawer_screen.dart';
import 'package:makepdfs/src/Home/home_screen.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../core/color_constant.dart';

class LayoutHomeScreen extends StatefulWidget {

  @override
  State<LayoutHomeScreen> createState() => _LayoutHomeScreenState();
}

class _LayoutHomeScreenState extends State<LayoutHomeScreen> {
  final zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuBackgroundColor: colorBackgroundMenuBar,
      style: DrawerStyle.defaultStyle,
      angle: -1.0,
      borderRadius: 25,
      showShadow: true,
      controller: zoomDrawerController,
        menuScreen: MenuScreen(),
        mainScreen: HomeScreen()
    );
  }
}
