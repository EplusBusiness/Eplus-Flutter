import 'package:flutter/material.dart';

import '../../core/color_constant.dart';
import '../../core/text_app_style.dart';
import '../text_customize/TextCustomize.dart';

class TextTxtfield extends StatefulWidget {
  const TextTxtfield({
    Key? key,
    this.hintString = '',
    this.onChanged,
    this.text = '',
    this.isNumber = false,
    this.focusNode,
    this.enable = true,
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
  State<TextTxtfield> createState() => _TextTxtfieldState();
}

class _TextTxtfieldState extends State<TextTxtfield> {
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
  void didUpdateWidget(covariant TextTxtfield oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.text != widget.text && _inputController.text != widget.text) {
      _inputController.text = widget.text;
    }
  }

  final _showSuffix = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.focusNode ?? _defaultFocusNode,
      controller: _inputController,
      keyboardType: widget.isNumber ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        enabled: widget.enable,
        contentPadding:
        const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
        focusColor: Colors.transparent,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: widget.colorLine),
          //  when the TextFormField in focused
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
              ),
              onPressed: () {
                _inputController.clear();
                _showSuffix.value = false;
              },
            );
          },
        ),
      ),
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
