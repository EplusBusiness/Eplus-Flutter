import 'package:flutter/material.dart';
import 'package:makepdfs/core/color_constant.dart';

import '../../core/text_app_style.dart';

class IconTextField extends StatefulWidget {
  const IconTextField({
    Key? key,
    this.hintString = '',
    required this.icon,
     this.onChanged,
     this.text = '',
  }) : super(key: key);

  final String icon;
  final String hintString;
  final Function(String)? onChanged;
  final String text;

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
    _defaultFocusNode = FocusNode();
    if(widget.text.isNotEmpty){
      _inputController.text = widget.text;
    }
  }

  @override
  void dispose() {
    _inputController.dispose();
    _defaultFocusNode?.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant IconTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(oldWidget.text != widget.text && _inputController.text != widget.text){
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
          Image.asset(widget.icon, height: 30, width: 30,),
          const SizedBox(width: 10,),
          Expanded(
            child: TextField(
              focusNode: _defaultFocusNode,
              controller: _inputController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
                focusColor: Colors.transparent,
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: colorYellow),
                  //  when the TextFormField in focused
                ) ,
                hintText: widget.hintString,
                hintStyle: textStyleApp.medium(size: 14, colorText: Colors.grey.shade400),
                suffixIcon: ValueListenableBuilder<bool>(
                  valueListenable: _showSuffix,
                  builder: (context, isShowSuffix, __) {
                   if( !isShowSuffix) return const SizedBox();
                    return IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      icon: const Icon(Icons.clear, color: Colors.black26,),
                      onPressed: () {
                        _inputController.clear();
                        _showSuffix.value = false;
                      },
                    );
                  }
                ) ,
              ),
              onChanged: (p0){
                _showSuffix.value = p0.isNotEmpty;
                widget.onChanged?.call(p0);
              }
            ),
          ),
        ],
      ),
    );
  }
}