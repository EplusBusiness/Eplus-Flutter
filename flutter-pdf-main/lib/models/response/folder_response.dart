import 'dart:convert';

import 'package:makepdfs/models/models/folder_model.dart';
import 'package:makepdfs/src/Home/home_state.dart';

class FolderResponse {
  FolderResponse({
    required this.listFolders,
  });

  List<FolderModel> listFolders;

  factory FolderResponse.fromRawJson(String str) =>
      FolderResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FolderResponse.fromJson(Map<String, dynamic> json) =>
      FolderResponse(
        listFolders: List<FolderModel>.from(json["listFolders"].map((x) => FolderModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
    "listFolders": listFolders,
  };

  List<FolderInfo>? toFolderInfo() {
    List<FolderInfo> listFolderInfo = [];

    listFolders.forEach((element) {
      FolderInfo folder = FolderInfo(
        id: element.id,
        updatedAt: element.updatedAt,
        createdAt: element.createdAt,
        userId: element.userId,
        name: element.name,
        path: element.path,
        size: element.size,
        itemId: element.itemId,
        type: element.type,
      );
      listFolderInfo.add(folder);
    });

    return listFolderInfo;
  }
}
