import 'package:flutter/material.dart';

import '../../core/text_app_style.dart';
import '../text_customize/TextCustomize.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

typedef DisplayString<T> = String Function(T item);

class DropDownButtonCustomize<T> extends StatelessWidget {
  const DropDownButtonCustomize({
    Key? key,
    this.selectedItem,
    required this.listItems,
    required this.hint,
    required this.onSelected,
    required this.displayString,
    this.onTap,
  }) : super(key: key);

  final T? selectedItem;
  final List<T> listItems;
  final String hint;
  final Function(T?) onSelected;
  final DisplayString<T> displayString;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButton2<T>(
          value: selectedItem,
          isExpanded: true,
          hint: TextCustomize(
            title: hint,
            textStyle:
                textStyleApp.medium(size: 15, colorText: Colors.grey.shade400),
          ),
          items: listItems
              .map(
                (T item) => DropdownMenuItem<T>(
                  child: TextCustomize(
                      title: displayString(item),
                      textStyle: textStyleApp.medium(size: 15)),
                  value: item,
                ),
              )
              .toList(),
          onChanged: (value) {
            //get value when changed
            onSelected.call(value);
          },
        ),
      ),
    );
  }
}
