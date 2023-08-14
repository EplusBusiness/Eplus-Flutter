import 'dart:convert';

class CategoryResponse {
  CategoryResponse({
     this.id,
     this.createdAt,
     this.updatedAt,
     this.creatorId,
     this.name,
     this.parentCategoryId,
  });

  int? id = -1;
  String? createdAt = '';
  String? updatedAt = '';
  int? creatorId = -1;
  String? name = '';
  int? parentCategoryId = -1;

  factory CategoryResponse.fromRawJson(String str) =>
      CategoryResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CategoryResponse.fromJson(Map<String, dynamic> json) => CategoryResponse(
    id: json["id"],
    createdAt: json["createdAt"],
    updatedAt: json["updatedAt"],
    creatorId: json["creatorId"],
    name: json["name"],
    parentCategoryId: json["parentCategoryId"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "creatorId": creatorId,
    "name": name,
    "parentCategoryId": parentCategoryId,
  };
}
