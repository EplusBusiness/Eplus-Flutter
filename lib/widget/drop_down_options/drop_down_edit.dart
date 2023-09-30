import 'package:flutter/material.dart';

enum SampleItem { edit, delete, add }

class DropDownOption extends StatefulWidget {
  const DropDownOption({
    Key? key,
    this.onEditPressed,
    this.onInsertPressed,
    this.onDeletePressed,
  }) : super(key: key);

  final VoidCallback? onEditPressed;
  final VoidCallback? onInsertPressed;
  final VoidCallback? onDeletePressed;

  @override
  State<DropDownOption> createState() => _DropDownOptionState();
}

class _DropDownOptionState extends State<DropDownOption> {
  SampleItem? selectedMenu;

  List<PopupMenuItem> listHasAdd = [
    const PopupMenuItem<SampleItem>(
      value: SampleItem.edit,
      child: Text('Rename'),
    ),
    const PopupMenuItem<SampleItem>(
      value: SampleItem.delete,
      child: Text('Delete'),
    ),
    const PopupMenuItem<SampleItem>(
      value: SampleItem.add,
      child: Text('Add more'),
    ),
  ];

  List<PopupMenuItem> listHasNotAdd = [
    const PopupMenuItem<SampleItem>(
      value: SampleItem.edit,
      child: Text('Rename'),
    ),
    const PopupMenuItem<SampleItem>(
      value: SampleItem.delete,
      child: Text('Delete'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<SampleItem>(
      icon: const Icon(Icons.more_vert),
      initialValue: selectedMenu,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      // Callback that sets the selected popup menu item.
      onSelected: (SampleItem item) {
        selectedMenu = item;

        switch (item) {
          case SampleItem.edit:
            widget.onEditPressed?.call();
            break;
          case SampleItem.delete:
            widget.onDeletePressed?.call();
            break;
          case SampleItem.add:
            widget.onInsertPressed?.call();
            break;
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
        const PopupMenuItem<SampleItem>(
          value: SampleItem.edit,
          child: Text('Rename'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.delete,
          child: Text('Delete'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.add,
          child: Text('Add more'),
        ),
      ],
    );
  }
}
