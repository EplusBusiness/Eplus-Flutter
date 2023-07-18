import 'dart:convert';

class BaseRequest {
  String? id;

  BaseRequest({
    required this.id,
  });

  factory BaseRequest.fromRawJson(String str) =>
      BaseRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BaseRequest.fromJson(Map<String, dynamic> json) => BaseRequest(
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}