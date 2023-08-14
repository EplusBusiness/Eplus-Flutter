import 'package:flutter/material.dart';

class VMSStateButton extends StatelessWidget {
  const VMSStateButton({
    Key? key,
    required this.press,
    required this.text,
    this.colorText = Colors.black,
    this.isEnable = true,
    required this.colorsBackground,
    required this.width,
    required this.height,
    this.radius = 0.0,
    this.symmetric = 0.0,
    required this.textStyle,
  }) : super(key: key);

  final VoidCallback press;
  final Color colorsBackground, colorText;
  final String text;
  final bool isEnable;
  final double width, height, radius, symmetric;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: isEnable ? press : null,
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: Colors.blueGrey,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
          // onSurface: Colors.red,
          padding: EdgeInsets.symmetric(horizontal: symmetric),
          textStyle: textStyle,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isEnable ? colorText : Colors.grey,
          ),
        ),
      ),
    );
  }
}
