import 'dart:convert';

class UpdateNameCategoryRequest {
  String? name;
  int? parentCategoryId;
  int? creatorId;

  UpdateNameCategoryRequest({
    required this.name,
    required this.parentCategoryId,
    required this.creatorId,
  });

  factory UpdateNameCategoryRequest.fromRawJson(String str) =>
      UpdateNameCategoryRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpdateNameCategoryRequest.fromJson(Map<String, dynamic> json) => UpdateNameCategoryRequest(
    name: json["name"],
    parentCategoryId: json["parentCategoryId"],
    creatorId: json["creatorId"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "parentCategoryId": parentCategoryId,
    "creatorId": creatorId,
  };
}