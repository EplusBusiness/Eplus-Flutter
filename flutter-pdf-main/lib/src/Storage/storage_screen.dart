import 'package:flutter/material.dart';
import 'package:makepdfs/core/color_constant.dart';
import 'package:makepdfs/core/icon_constants.dart';
import 'package:makepdfs/core/text_app_style.dart';
import 'package:makepdfs/widget/customize_navigation_bar/customize_navigation_bar.dart';
import 'package:makepdfs/widget/text_customize/TextCustomize.dart';

class StorageScreen extends StatefulWidget {

  @override
  State<StorageScreen> createState() => _StorageScreenState();
}

class _StorageScreenState extends State<StorageScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildNavigation(),
        _buildListBuilder(),
      ],
    );
  }

  _buildNavigation() {
    return CustomizeNavigationBar(onNextPressed: () { }, title: 'Storage');
  }

  _buildListBuilder() {
    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.only(top: 10),
          scrollDirection: Axis.vertical,
          itemCount: 15,
          itemBuilder: (context, index) => _buildCell()),
    );
  }

  _buildCell() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 2.0, color: colorYellow),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(imgLogo, width: 120, height: 120, fit: BoxFit.fitWidth,),
              const SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                        child: TextCustomize(title: 'Màn hình LCD - View', textStyle: textStyleApp.bold(size: 18))
                    ),
                    TextCustomize(title: '38 items', textStyle: textStyleApp.medium(size: 14, colorText: Colors.grey.shade700)),
                    const SizedBox(height: 20,),
                    TextCustomize(title: 'Created at 10/07/2023', textStyle: textStyleApp.regular(size: 10, colorText: Colors.grey.shade400)),
                    TextCustomize(title: 'Updated at 10/07/2023', textStyle: textStyleApp.regular(size: 10, colorText: Colors.grey.shade400)),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
