import 'package:flutter/material.dart';
import 'package:makepdfs/core/color_constant.dart';
import 'package:makepdfs/core/text_app_style.dart';
import 'package:makepdfs/widget/text_customize/TextCustomize.dart';

import '../../core/icon_constants.dart';
import '../vms_state_button/vms_state_button.dart';

class CustomizeNavigationBar extends StatelessWidget {
  const CustomizeNavigationBar({
    Key? key,
    required this.onNextPressed,
    this.isVisiblePlusButton = true,
    required this.title,
    this.onPreviousPressed,
  }) : super(key: key);

  final bool isVisiblePlusButton;
  final Function onNextPressed;
  final VoidCallback? onPreviousPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 5.0,
                offset: Offset(0.0, 0.5)
            )
          ],
        color: colorYellow,
      ),
      height: 105,
      child: Column(
        children: [
          const SizedBox(
            height: 55,),
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
      onPressed: () {  },
      icon: Image.asset(icBack, height: 40, width: 40,),
    );
  }

  Widget _buildPlusButton() {
    return Visibility(
      visible: isVisiblePlusButton,
      maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      child: IconButton(
        onPressed: () {
          onNextPressed.call();
        },
        icon: Image.asset(icPlus, height: 22, width: 22,),
      )
    );
  }
}
