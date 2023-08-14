import 'dart:convert';

class InsertFolderRequest {
  String? name;
  int? parentCategoryId;

  InsertFolderRequest({
    required this.name,
    required this.parentCategoryId,
  });

  factory InsertFolderRequest.fromRawJson(String str) =>
      InsertFolderRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory InsertFolderRequest.fromJson(Map<String, dynamic> json) => InsertFolderRequest(
    name: json["name"],
    parentCategoryId: json["parentCategoryId"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "parentCategoryId": parentCategoryId,
  };
}