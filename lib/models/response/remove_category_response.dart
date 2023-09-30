import 'dart:convert';

class CategoryResponse {
  CategoryResponse({
    required this.statusCategory,
  });

  bool statusCategory;

  factory CategoryResponse.fromRawJson(String str) =>
      CategoryResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      CategoryResponse(
        statusCategory: json["statusCategory"],
      );

  Map<String, dynamic> toJson() => {
    "statusCategory": statusCategory,
  };
}
