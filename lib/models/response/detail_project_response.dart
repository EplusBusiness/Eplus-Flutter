import 'dart:convert';
import '../../src/detail_project/detail_project_state.dart';

class DetailProjectResponse {
  DetailProjectResponse({
    required this.listFolders,
  });

  List<FolderInfo> listFolders;

  factory DetailProjectResponse.fromRawJson(String str) =>
      DetailProjectResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DetailProjectResponse.fromJson(List<dynamic> json) {

    return DetailProjectResponse(
      listFolders: List<FolderInfo>.from(json.map((x) => FolderInfo.fromJson(x))),
    );
  }


  Map<String, dynamic> toJson() => {
    "listFolders": listFolders,
  };
}
