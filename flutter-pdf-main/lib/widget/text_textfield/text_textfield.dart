import 'package:flutter/material.dart';

import '../../core/color_constant.dart';
import '../../core/text_app_style.dart';
import '../text_customize/TextCustomize.dart';

class TextTxtfield extends StatefulWidget {
  const TextTxtfield({
    Key? key,
    this.hint = '',
  }) : super(key: key);

  final String hint;

  @override
  State<TextTxtfield> createState() => _TextTxtfieldState();
}

class _TextTxtfieldState extends State<TextTxtfield> {
  FocusNode? _defaultFocusNode;
  late TextEditingController _inputController;
  bool isShowPrefixIcon = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _inputController = TextEditingController();
    _defaultFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _inputController.dispose();
    _defaultFocusNode?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: _defaultFocusNode,
      controller: _inputController,
      decoration: InputDecoration(
        contentPadding:  const EdgeInsets.only(left: 10, top: 15, bottom: 15),
        focusColor: Colors.transparent,
        hintText: widget.hint,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintStyle: textStyleApp.medium(size: 14, colorText: Colors.grey.shade400),
        suffixIconConstraints: const BoxConstraints(
          minHeight: 20,
          minWidth: 20,
        ),
        suffixIcon: isShowPrefixIcon ? IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: const Icon(Icons.clear, color: Colors.black26,),
          onPressed: () {
            _inputController.clear();
            inputChanged();
          },
        ) :  null,
      ),
      onChanged: (value) {
        setState(() {
          inputChanged();
        });
      },
    );
  }

  void inputChanged() {
    if (_inputController.text.isNotEmpty) {
      isShowPrefixIcon = true;
    }else {
      isShowPrefixIcon = false;
    }

    setState(() {});
  }

  String getInputText() {
    return _inputController.text;
  }
}
