import 'dart:convert';

import '../../src/edit_form/edit_form_state.dart';

class ListItemsFormResponse {
  ListItemsFormResponse({
    required this.items,
  });

  List<ItemInfo> items = [];

  factory ListItemsFormResponse.fromRawJson(String str) =>
      ListItemsFormResponse.fromJson(json.decode(str));

  factory ListItemsFormResponse.fromJson(Map<String, dynamic> json) {
    List<dynamic> items = json['items'];
    List<ItemInfo> array = [];
    for (var item in items) {
      final itemInfo = ItemInfo.fromJson(item);
      array.insert(0, itemInfo);
    }
    return ListItemsFormResponse(
      items: array,
    );
  }
}
