import 'package:flutter/material.dart';
import 'package:eplusflutter/core/color_constant.dart';

import '../../core/text_app_style.dart';

class IconTextField extends StatefulWidget {
  const IconTextField({
    Key? key,
    this.hintString = '',
    required this.icon,
    this.onChanged,
    this.text = '',
    this.isNumber = false,
    this.focusNode,
    this.nextFocusNode,
    this.onSubmit,
    this.enable = true,
  }) : super(key: key);

  final String icon;
  final String hintString;
  final Function(String)? onChanged;
  final Function(String?)? onSubmit;
  final String text;
  final bool isNumber;
  final bool enable;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;

  @override
  State<IconTextField> createState() => _IconTextFieldState();
}

class _IconTextFieldState extends State<IconTextField> {
  FocusNode? _defaultFocusNode;
  late TextEditingController _inputController;

  @override
  void initState() {
    super.initState();
    _inputController = TextEditingController();
    if (widget.focusNode == null) {
      _defaultFocusNode = FocusNode();
    }
    if (widget.text.isNotEmpty) {
      _inputController.text = widget.text;
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
  void didUpdateWidget(covariant IconTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.text != widget.text && _inputController.text != widget.text) {
      _inputController.text = widget.text;
    }
  }

  final _showSuffix = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Image.asset(
            widget.icon,
            height: 30,
            width: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextFormField(
              onTap: () async {
                await Future.delayed(const Duration(milliseconds: 500));
                _inputController.selection = TextSelection(
                    baseOffset: 0, extentOffset: _inputController.text.length);
              },
              enabled: widget.enable,
              focusNode: widget.focusNode ?? _defaultFocusNode,
              controller: _inputController,
              keyboardType:
                  widget.isNumber ? TextInputType.number : TextInputType.text,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
                focusColor: Colors.transparent,
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: colorYellow),
                  //  when the TextFormField in focused
                ),
                hintText: widget.hintString,
                hintStyle: textStyleApp.medium(
                    size: 14, colorText: Colors.grey.shade400),
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
                    }),
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
            ),
          ),
        ],
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
