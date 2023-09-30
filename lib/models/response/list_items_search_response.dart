import 'dart:convert';
import '../../src/search_storage/search_storage_state.dart';

class ListItemsSearchResponse {
  ListItemsSearchResponse({
    required this.items,
  });

  List<ItemInfo> items = [];

  factory ListItemsSearchResponse.fromRawJson(String str) =>
      ListItemsSearchResponse.fromJson(json.decode(str));

  factory ListItemsSearchResponse.fromJson(Map<String, dynamic> json) {
    List<dynamic> items = json['items'];
    List<ItemInfo> array = [];
    for (var item in items) {
      final itemInfo = ItemInfo.fromJson(item);
      array.insert(0, itemInfo);
    }
    return ListItemsSearchResponse(
      items: array,
    );
  }
}
