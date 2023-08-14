import 'package:flutter/material.dart';

import '../../core/color_constant.dart';
import '../../core/text_app_style.dart';

class TextFieldProductTxtfield extends StatefulWidget {
  const TextFieldProductTxtfield({
    Key? key,
    this.hintString = '',
    this.onChanged,
    this.text = '',
    this.isNumber = false,
    this.enable = true,
    this.focusNode,
    this.nextFocusNode,
    this.onSubmit, this.colorLine = colorYellow,
  }) : super(key: key);

  final String hintString;
  final Function(String)? onChanged;
  final Function(String?)? onSubmit;
  final String text;
  final bool isNumber;
  final bool enable;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final Color colorLine;

  @override
  State<TextFieldProductTxtfield> createState() => _TextFieldProductTxtfieldState();
}

class _TextFieldProductTxtfieldState extends State<TextFieldProductTxtfield> {
  FocusNode? _defaultFocusNode;
  late TextEditingController _inputController;

  @override
  void initState() {
    super.initState();
    _inputController = TextEditingController();

    if (widget.text.isNotEmpty) {
      _inputController.text = widget.text;
    }
    if (widget.focusNode == null) {
      _defaultFocusNode = FocusNode();
    }
  }

  @override
  void dispose() {
    _inputController.dispose();
    if (_defaultFocusNode != null) {
      _defaultFocusNode?.dispose();
    }
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant TextFieldProductTxtfield oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.text != widget.text && _inputController.text != widget.text) {
      _inputController.text = widget.text;
    }
  }

  final _showSuffix = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.enable,
      focusNode: widget.focusNode ?? _defaultFocusNode,
      controller: _inputController,
      keyboardType: widget.isNumber ? TextInputType.number : TextInputType.text,
      onFieldSubmitted: (text) {
        if (widget.nextFocusNode != null) {
          _buildNextFocusNodeUseCases(context);
        } else {
          widget.onSubmit?.call(text);
        }
      },
      onChanged: (p0) {
        _showSuffix.value = p0.isNotEmpty;
        widget.onChanged?.call(p0);
      },
      decoration: InputDecoration(
        contentPadding:
        const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
        focusColor: Colors.transparent,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide.none,
          //  when the TextFormField in focused
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide.none
        ),
        hintText: widget.hintString,
        hintStyle:
        textStyleApp.medium(size: 14, colorText: Colors.grey.shade400),
        suffixIcon: ValueListenableBuilder<bool>(
          valueListenable: _showSuffix,
          builder: (context, isShowSuffix, __) {
            if (!isShowSuffix) return const SizedBox();
            return IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              icon: const Icon(
                Icons.clear,
                color: Colors.black26,
                size: 20,
              ),
              onPressed: () {
                _inputController.clear();
                _showSuffix.value = false;
              },
            );
          },
        ),
      ),

    );
  }

  void _buildNextFocusNodeUseCases(BuildContext context) {
    if (widget.nextFocusNode != null) {
      FocusScope.of(context).requestFocus(widget.nextFocusNode);
    } else {
      FocusScope.of(context).unfocus();
    }
  }
}
