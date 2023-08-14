import 'package:eplusflutter/widget/text_customize/TextCustomize.dart';
import 'package:flutter/material.dart';
import 'package:eplusflutter/core/color_constant.dart';
import 'package:eplusflutter/core/text_app_style.dart';

import '../../core/icon_constants.dart';

class CustomizeNavigationBar extends StatelessWidget {
  const CustomizeNavigationBar({
    Key? key,
    required this.onNextPressed,
    this.isVisiblePlusButton = true,
    this.isBackground = true,
    this.isVisibleEditButton = false,
    this.isVisibleDeleteButton = false,
    this.isVisibleNextButton = false,
    required this.title,
    this.onPreviousPressed,
    this.onEditPressed,
  }) : super(key: key);

  final bool isBackground;
  final bool isVisiblePlusButton;
  final bool isVisibleEditButton;
  final bool isVisibleDeleteButton;
  final bool isVisibleNextButton;
  final Function onNextPressed;
  final VoidCallback? onEditPressed;
  final VoidCallback? onPreviousPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26, blurRadius: 5.0, offset: Offset(0.0, 0.5))
        ],
        color: colorYellow,
      ),
      height: 100,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Stack(
            children: [
              SizedBox(
                height: 50,
                child: Center(
                  child: TextCustomize(
                    title: title,
                    textStyle: textStyleApp.bold(size: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    _buildBackButton(),
                    const Spacer(),
                    _buildPlusButton(),
                    _buildEditButton(),
                    _buildDeleteButton(),
                    _buildNextButton(),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBackButton() {
    return IconButton(
      onPressed: () {
        onPreviousPressed?.call();
      },
      icon: const Icon(Icons.navigate_before),
    );
  }

  Widget _buildPlusButton() {
    return Visibility(
      visible: isVisiblePlusButton,
      // maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      child: IconButton(
        onPressed: () {
          onNextPressed.call();
        },
        icon: Image.asset(
          icPlus,
          height: 22,
          width: 22,
        ),
      ),
    );
  }

  Widget _buildEditButton() {
    return Visibility(
        visible: isVisibleEditButton,
        // maintainSize: true,
        maintainAnimation: true,
        maintainState: true,
        child: IconButton(
          onPressed: () {
            onEditPressed?.call();
          },
          icon: Icon(Icons.edit),
        ));
  }

  Widget _buildDeleteButton() {
    return Visibility(
        visible: isVisibleDeleteButton,
        maintainAnimation: true,
        maintainState: true,
        child: IconButton(
          onPressed: () {
            onEditPressed?.call();
          },
          icon: Icon(Icons.delete),
        ));
  }

  Widget _buildNextButton() {
    return Visibility(
        visible: isVisibleNextButton,
        maintainAnimation: true,
        maintainState: true,
        child: IconButton(
          onPressed: () {
            onNextPressed.call();
          },
          icon: Icon(Icons.navigate_next),
        ));
  }
}
