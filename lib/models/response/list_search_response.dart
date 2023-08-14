import 'dart:convert';

import 'package:eplusflutter/src/search/list_search_state.dart';

class ListSearchResponse {
  ListSearchResponse({
    required this.listFolders,
  });

  List<FolderInfo> listFolders;

  factory ListSearchResponse.fromRawJson(String str) =>
      ListSearchResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ListSearchResponse.fromJson(List<dynamic> json) {

    return ListSearchResponse(
      listFolders: List<FolderInfo>.from(json.map((x) => FolderInfo.fromJson(x))),
    );
  }


  Map<String, dynamic> toJson() => {
    "listFolders": listFolders,
  };

// List<FolderInfo>? toFolderInfo() {
//   List<FolderInfo> listFolderInfo = listFolders;
//
//   return listFolderInfo;
// }
}
