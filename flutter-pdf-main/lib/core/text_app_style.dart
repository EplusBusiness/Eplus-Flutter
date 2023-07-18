import 'package:flutter/material.dart';

const String fontMontserrat = 'Montserrat';
const String fontSacramento = 'Sacramento';

final textStyleApp = TextStyleApp();

class TextStyleApp {
  TextStyle _textStyle({
    required double size,
    required FontWeight fontWeight,
    FontStyle? fontStyle,
    required String fontFamily,
    Color? color,
  }) {
    return TextStyle(
        decoration: TextDecoration.none,
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        fontStyle: fontStyle ?? FontStyle.normal,
        color: color);
  }

  TextStyle light(
      {required double size,
      String font = fontMontserrat,
      Color colorText = Colors.black}) {
    return _textStyle(
        size: size,
        fontWeight: FontWeight.w300,
        fontFamily: font,
        color: colorText);
  }

  TextStyle regular(
      {required double size,
      String font = fontMontserrat,
      Color colorText = Colors.black}) {
    return _textStyle(
        size: size,
        fontWeight: FontWeight.w400,
        fontFamily: font,
        color: colorText);
  }

  TextStyle medium(
      {required double size,
      String font = fontMontserrat,
      Color colorText = Colors.black}) {
    return _textStyle(
        size: size,
        fontWeight: FontWeight.w500,
        fontFamily: font,
        color: colorText);
  }

  TextStyle semiBold(
      {required double size,
      String font = fontMontserrat,
      Color colorText = Colors.black}) {
    return _textStyle(
        size: size,
        fontWeight: FontWeight.w600,
        fontFamily: font,
        color: colorText);
  }

  TextStyle bold(
      {required double size,
      String font = fontMontserrat,
      Color colorText = Colors.black}) {
    return _textStyle(
        size: size,
        fontWeight: FontWeight.w700,
        fontFamily: font,
        color: colorText);
  }

  TextStyle italic({required double size,
    String font = fontMontserrat,
    Color colorText = Colors.black}) {
    return _textStyle(
        size: size,
        fontWeight: FontWeight.w500,
        fontFamily: fontMontserrat,
        fontStyle: FontStyle.italic,
        color: colorText
    );
  }
}
