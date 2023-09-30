import 'dart:convert';

class InsertFolderRequest {
  String? name;
  String? company;
  int? parentCategoryId;

  InsertFolderRequest({
    required this.name,
    required this.company,
    required this.parentCategoryId,
  });

  factory InsertFolderRequest.fromRawJson(String str) =>
      InsertFolderRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory InsertFolderRequest.fromJson(Map<String, dynamic> json) => InsertFolderRequest(
    name: json["name"],
    company: json["company"],
    parentCategoryId: json["parentCategoryId"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "company": company,
    "parentCategoryId": parentCategoryId,
  };
}