import 'dart:convert';

class UpdateNameRequest {
  String? name;

  UpdateNameRequest({
    required this.name,
  });

  factory UpdateNameRequest.fromRawJson(String str) =>
      UpdateNameRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpdateNameRequest.fromJson(Map<String, dynamic> json) => UpdateNameRequest(
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
  };
}