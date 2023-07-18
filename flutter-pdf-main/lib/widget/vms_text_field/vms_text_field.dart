import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:makepdfs/extensions/string_extensions.dart';
import 'package:makepdfs/widget/vms_text_field/vms_text_field_bloc.dart';

import '../../core/icon_constants.dart';

enum VmsTextFieldType { characters, phone }

const String fontMontserrat = 'Montserrat';

class VmsTextField extends StatefulWidget {
  const VmsTextField({
    Key? key,
    this.hint = '',
    this.text,
    this.isPassword = false,
    this.focusNode,
    this.nextFocusNode,
    this.onTextChanged,
    this.secondController,
    this.inputTextChanged,
    this.height = 50,
    this.maxLength = 500,
    this.keyboardType = TextInputType.text,
    this.onSubmit,
    this.fontSize = 40,
    this.autoFocus = true,
    this.isClearSuffix = true,
    this.isTextCenter = false,
    this.radius = 20,
    this.isAlwaysHideClearIcon = false,
    this.inputFormatter,
    this.textCapitalization = TextCapitalization.sentences,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  final String hint;
  final String? text;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final double fontSize;
  final double height;
  final double radius;
  final int maxLength;
  final bool isPassword;
  final bool autoFocus;
  final bool isClearSuffix;
  final bool isTextCenter;
  final bool isAlwaysHideClearIcon;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatter;
  final Color backgroundColor;
  final TextEditingController? secondController;
  final Function(String?)? onTextChanged;
  final Function(String?)? inputTextChanged;
  final Function(String?)? onSubmit;

  @override
  State<VmsTextField> createState() => MyVmsTextFieldState();
}

class MyVmsTextFieldState extends State<VmsTextField> {
  final _bloc = VmsTextFieldBloc();
  FocusNode? _defaultFocusNode;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    widget.secondController?.text = widget.text.safe;
    _controller = TextEditingController(text: widget.text);
    _controller.addListener(_inputTextChanged);
    _bloc.add(SetVisibilitySuffixIconEvent(!widget.text.isNullOrEmpty));

    if (widget.focusNode == null) {
      _defaultFocusNode = FocusNode();
    }
  }

  @override
  void dispose() {
    _bloc.close();
    _controller.dispose();

    if (_defaultFocusNode != null) {
      _defaultFocusNode?.dispose();
    }
    super.dispose();
  }

  void _inputTextChanged() {
    widget.inputTextChanged?.call(_controller.text);
  }

  String getText() {
    return _controller.text;
  }

  void setText(String newText) {
    _controller.text = newText;
    widget.onTextChanged?.call(newText);
    if (newText.isNotEmpty) {
      _bloc.add(const SetVisibilitySuffixIconEvent(true));
    } else {
      _bloc.add(const SetVisibilitySuffixIconEvent(false));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: Column(
        children: [
          SizedBox(
            height: 30,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.hint.firstCharacterUpper,
                style: _buildTextStyle(Colors.lightGreen),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            child: TextFormField(
              scrollPadding: const EdgeInsets.only(bottom: 300),
              maxLength: widget.maxLength,
              autofocus: widget.autoFocus,
              keyboardType: widget.keyboardType,
              inputFormatters: widget.inputFormatter,
              controller: widget.secondController ?? _controller,
              onChanged: (textChanged) {
                bool shouldShow = textChanged.isNotEmpty;
                _bloc.add(SetVisibilitySuffixIconEvent(shouldShow));
                widget.onTextChanged?.call(textChanged);
              },
              onFieldSubmitted: (text) {
                if (widget.nextFocusNode != null) {
                  _buildNextFocusNodeUseCases(context);
                } else {
                  widget.onSubmit?.call(text);
                }
              },
              focusNode: widget.focusNode ?? _defaultFocusNode,
              textAlign:
                  widget.isTextCenter ? TextAlign.center : TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              textInputAction: _buildTextInputAction,
              textCapitalization: widget.textCapitalization,
              style: _buildTextStyle(Colors.black),
              obscureText: widget.isPassword == true,
              obscuringCharacter: "●",
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.red),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  filled: true,
                  fillColor: widget.backgroundColor,
                  hintText: widget.hint,
                  hintStyle: _buildTextStyle(Colors.grey),
                  suffixIcon: widget.isClearSuffix ? _buildSuffixIcon() : null,
                  counterText: '',
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSuffixIcon() {
    if (widget.isAlwaysHideClearIcon) {
      return Visibility(
        visible: false,
        child: Container(),
      );
    }
    return BlocBuilder<VmsTextFieldBloc, VmsTextFieldState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(right: 20),
          child: SizedBox(
            width: 20,
            height: 20,
            child: state is ShowSuffixIcon
                ? InkWell(
                    child: Image.asset(icClearTextField),
                    onTap: () {
                      _controller.clear();
                      widget.secondController?.clear();
                      _bloc.add(const ClearEvent());

                      widget.focusNode?.requestFocus();
                      _defaultFocusNode?.requestFocus();

                      widget.onTextChanged?.call(_controller.text);
                    },
                  )
                : Container(),
          ),
        );
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

  TextInputAction get _buildTextInputAction {
    return widget.nextFocusNode != null
        ? TextInputAction.next
        : TextInputAction.done;
  }

  TextStyle _buildTextStyle(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontFamily: fontMontserrat,
    );
  }

  void requestFocus() {
    FocusScope.of(context).requestFocus(widget.focusNode);
  }
}
