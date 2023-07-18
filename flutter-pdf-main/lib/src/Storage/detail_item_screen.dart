import 'package:flutter/material.dart';

import '../../widget/customize_navigation_bar/customize_navigation_bar.dart';

class DetailItemScreen extends StatefulWidget {

  @override
  State<DetailItemScreen> createState() => _DetailItemScreenState();
}

class _DetailItemScreenState extends State<DetailItemScreen> {
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
        onNextPressed: () { },
        title: 'Detail',
        isVisiblePlusButton: false,
    );
  }


}
