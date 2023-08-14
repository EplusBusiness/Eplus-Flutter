import 'dart:convert';
import '../../src/Storage/storage_state.dart';

class ListItemsResponse {
  ListItemsResponse({
    required this.items,
  });

  List<ItemInfo> items = [];

  factory ListItemsResponse.fromRawJson(String str) =>
      ListItemsResponse.fromJson(json.decode(str));

  factory ListItemsResponse.fromJson(Map<String, dynamic> json) {
    List<dynamic> items = json['items'];
    List<ItemInfo> array = [];
    for (var item in items) {
      final itemInfo = ItemInfo.fromJson(item);
      array.insert(0, itemInfo);
    }
    return ListItemsResponse(
      items: array,
    );
  }
}
