import 'package:flutter/cupertino.dart';

extension StringExtension on String? {
  double textHeight(BuildContext context, TextStyle style) {
    final Size mediaSize = MediaQuery.of(context).size;
    final Size subContentWidgetSize = (TextPainter(
            text: TextSpan(
              text: this,
              style: style,
            ),
            maxLines: 1,
            textScaleFactor: MediaQuery.of(context).textScaleFactor,
            textDirection: TextDirection.ltr)
          ..layout())
        .size;

    return subContentWidgetSize.width /
        mediaSize.width *
        subContentWidgetSize.height;
  }

  String get safe {
    return (this != null) ? this!.trim() : '';
  }

  bool get isNullOrEmpty {
    return this == null || this == '';
  }

  String? get getRemovedAllWhites {
    return this?.replaceAll(' ', '').safe;
  }

  bool get isTemperatureValid {
    if (this == null) {
      return false;
    }
    RegExp regExp = RegExp(
      r"^\d{2}\.\d{1}$",
      caseSensitive: false,
      multiLine: false,
    );
    return regExp.hasMatch(this!);
  }

  bool get isNricValid {
    return this?.length == 4;
  }

  bool get isPhoneValid {
    final safePhone = this ?? '';
    return safePhone.length >= 8;
  }

  bool get isUrlValid {
    String value = this ?? "";
    if (value.isNullOrEmpty || value == 'null') {
      return false;
    }
    var urlPattern =
        r"(https?|http)://([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?";

    RegExp exp = RegExp(
      urlPattern,
      caseSensitive: false,
      multiLine: false,
    );
    if (exp.hasMatch(value)) {
      return true;
    }
    return false;
  }

  bool get isValidVideoFormat {
    bool isContainsExtensionVideo = false;
    String value = this?.toLowerCase().trim() ?? "";
    var lists = [
      'mp4',
      'mov',
      'wav',
    ];
    for (var element in lists) {
      String extension = '.$element';
      if (value.contains(extension)) {
        isContainsExtensionVideo = true;
      }
    }

    return isContainsExtensionVideo;
  }

  bool get isUrlVideoValid {
    return isUrlValid && isValidVideoFormat;
  }

  String get firstCharacterUpper {
    List arrayPieces = [];

    String outPut = '';

    String? text =
        this; // This is not necessary, is only for the example. The text here is that one is passed in parameter.
    if (this == '') {
      return outPut;
    }
    text?.split(' ').forEach((sepparetedWord) {
      arrayPieces.add(sepparetedWord);
    });

    for (var word in arrayPieces) {
      word =
          "${word[0].toString().toUpperCase()}${word.toString().substring(1)} ";
      outPut += word;
    }

    return outPut;
  }
}
