import 'package:flutter/material.dart';
import 'package:eplusflutter/core/text_app_style.dart';
import 'package:eplusflutter/widget/text_customize/TextCustomize.dart';

class MenuItem extends StatelessWidget {
  MenuItem({Key? key,
    required this.icon,
    required this.title,
    required this.onTap
  }) : super(key: key);

  final String icon;
  final String title;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 14),
      child: GestureDetector(
        onTap: () => onTap,
        child: Row(
          children: [
            Image.asset(icon, height: 28, width: 28,),
            const SizedBox(width: 10,),
            TextCustomize(title: title, textStyle: textStyleApp.medium(size: 16, colorText: Colors.white))
          ],
        ),
      ),
    );
  }
}
