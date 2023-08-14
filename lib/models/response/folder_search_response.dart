import 'dart:convert';

import 'package:eplusflutter/src/Search/list_search_state.dart';

class FolderHomeResponse {
  FolderHomeResponse({
    required this.listFolders,
  });

  List<FolderInfo> listFolders;

  factory FolderHomeResponse.fromRawJson(String str) =>
      FolderHomeResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FolderHomeResponse.fromJson(List<dynamic> json) {

    return FolderHomeResponse(
      listFolders: List<FolderInfo>.from(json.map((x) => FolderInfo.fromJson(x))),
    );
  }


  Map<String, dynamic> toJson() => {
    "listFolders": listFolders,
  };
}
