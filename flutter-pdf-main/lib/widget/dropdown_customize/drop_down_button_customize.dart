import 'package:flutter/material.dart';

import '../../core/text_app_style.dart';
import '../text_customize/TextCustomize.dart';

class DropDownButtonCustomize extends StatefulWidget {
  const DropDownButtonCustomize({Key? key, required this.listItems, required this.hint});

  final List<String> listItems;
  final String hint;

  @override
  State<DropDownButtonCustomize> createState() => _DropDownButtonCustomizeState();
}

class _DropDownButtonCustomizeState extends State<DropDownButtonCustomize> {
  String? item;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButton(
          isExpanded: true,
          value: item,
          hint: TextCustomize(
              title: widget.hint,
            textStyle: textStyleApp.medium(size: 15, colorText: Colors.grey.shade400),
          ),
          items: widget.listItems.map(
                (String item) => DropdownMenuItem<String>(
                    child: TextCustomize(
                        title: item, textStyle: textStyleApp.medium(size: 15)),
                value: item,
                ),
          ).toList(),
          onChanged: (value) {
            //get value when changed
            item = value.toString();
          },
        ),
      ),
    );
  }
}
