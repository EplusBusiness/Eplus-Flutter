import 'package:flutter/material.dart';

class TextCustomize extends StatelessWidget {
  const TextCustomize({
    Key? key,
    required this.title,
    this.lineHeight = 1.15,
    this.alignmentText = TextAlign.start,
    required this.textStyle,
    this.maxLines, this.overflow = TextOverflow.visible,
  }) : super(key: key);

  final String title;
  final double lineHeight;
  final TextAlign alignmentText;
  final TextStyle textStyle;
  final int? maxLines;
  final TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: overflow,
      textAlign: alignmentText,
      style: textStyle,
      maxLines: maxLines,
    );
  }
}
