import 'package:flutter/material.dart';

import '../../core/color_constant.dart';
import '../../core/text_app_style.dart';

class RegisterTxtfield extends StatefulWidget {
  const RegisterTxtfield({
    Key? key,
    this.hintString = '',
    this.onChanged,
    this.text = '',
    this.isPassword = false,
    this.focusNode,
    this.nextFocusNode,
    this.onSubmit,
    this.colorLine = colorYellow,
  }) : super(key: key);

  final String hintString;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final Function(String)? onChanged;
  final Function(String?)? onSubmit;
  final String text;
  final bool isPassword;
  final Color colorLine;

  @override
  State<RegisterTxtfield> createState() => _RegisterTxtfieldState();
}

class _RegisterTxtfieldState extends State<RegisterTxtfield> {
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
  void didUpdateWidget(covariant RegisterTxtfield oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.text != widget.text && _inputController.text != widget.text) {
      _inputController.text = widget.text;
    }
  }

  final _showSuffix = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.focusNode ?? _defaultFocusNode,
      controller: _inputController,
      obscureText: _showSuffix.value,
      obscuringCharacter: "●",
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
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
            if (!isShowSuffix) {
              return IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: const Icon(
                  Icons.visibility,
                  color: Colors.black26,
                ),
                onPressed: () {
                  _showSuffix.value = true;
                  setState(() {});
                },
              );
            }
            return IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              icon: const Icon(
                Icons.visibility_off,
                color: Colors.black26,
              ),
              onPressed: () {
                _showSuffix.value = false;
                setState(() {});
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
        // _showSuffix.value = p0.isNotEmpty;
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
