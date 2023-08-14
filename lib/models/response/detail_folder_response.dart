import 'dart:convert';
import '../../src/detail_folder/detail_folder_state.dart';

class DetailFolderResponse {
  DetailFolderResponse({
    required this.listFolders,
  });

  List<DetailFolderInfo> listFolders;

  factory DetailFolderResponse.fromRawJson(String str) =>
      DetailFolderResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DetailFolderResponse.fromJson(List<dynamic> json) {

    return DetailFolderResponse(
      listFolders: List<DetailFolderInfo>.from(json.map((x) => DetailFolderInfo.fromJson(x))),
    );
  }


  Map<String, dynamic> toJson() => {
    "listFolders": listFolders,
  };
}
