import 'dart:convert';

class SearchFolderRequest {
  String? name;

  SearchFolderRequest({
    required this.name,
  });

  factory SearchFolderRequest.fromRawJson(String str) =>
      SearchFolderRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchFolderRequest.fromJson(Map<String, dynamic> json) => SearchFolderRequest(
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
  };
}