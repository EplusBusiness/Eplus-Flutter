import 'package:flutter/material.dart';

import '../../core/text_app_style.dart';
import '../text_customize/TextCustomize.dart';

class DropDownButtonNumberCustomize extends StatefulWidget {
  const DropDownButtonNumberCustomize({Key? key, required this.hint, required this.onSelected, required this.stock});

  final String hint;
  final int stock;
  final Function(String) onSelected;

  @override
  State<DropDownButtonNumberCustomize> createState() => _DropDownButtonNumberCustomizeState();
}

class _DropDownButtonNumberCustomizeState extends State<DropDownButtonNumberCustomize> {


  @override
  Widget build(BuildContext context) {
    var listNumber = List<int>.generate(widget.stock, (index) => index + 1);
    List<String> listString = listNumber.map((e) => e.toString()).toList();
    return DropdownButtonHideUnderline(
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButton(
          isExpanded: true,
          hint: TextCustomize(
            title: widget.hint,
            textStyle: textStyleApp.medium(size: 15, colorText: Colors.grey.shade400),
          ),
          items: listString.map(
                (String item) => DropdownMenuItem<String>(
              child: TextCustomize(
                  title: item, textStyle: textStyleApp.medium(size: 15)),
              value: item,
            ),
          ).toList(),
          onChanged: (value) {
            //get value when changed
            widget.onSelected.call(value ?? '');
          },
        ),
      ),
    );
  }
}
